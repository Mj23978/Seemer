import 'dart:async';
import 'dart:core';
import 'dart:io';

import 'package:async/async.dart' show StreamGroup;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:localstorage/localstorage.dart';
import 'package:my_chat/widgets/temp_message.dart';
import 'package:path_provider/path_provider.dart';

import '../models/enums/chat_enums.dart';
import '../models/message.dart';
import '../network/encryption/encryption.dart';
import '../network/firebase/firestore/firestore_chat.dart';
import '../utils/chat_utils.dart';
import '../utils/save.dart';
import '../utils/strings.dart';

class BaseChatProvider extends ChangeNotifier {
  Map<String, Map<String, dynamic>> userData =
      Map<String, Map<String, dynamic>>();

  Map<String, Future> _messageStatus = Map<String, Future>();

  String userId, peerNumber;
  TextEditingController textInput = TextEditingController();
  Map<String, dynamic> peer;
  int chatStatus, unread;
  dynamic uploadTimestamp, imageFile;

  E2EEncryption encryption = E2EEncryption();
  String chatId;
  List<Message> messages = List<Message>();
  ScrollController realtime = ScrollController();
  List<Map<String, dynamic>> _savedMessageDocs = List<Map<String, dynamic>>();

  _getMessageKey(String peerNumber, int timestamp) => '$peerNumber$timestamp';

  getMessageStatus(String peerNumber, int timestamp) {
    final key = _getMessageKey(peerNumber, timestamp);
    return _messageStatus[key] ?? true;
  }

  bool _loaded = false;

  LocalStorage _storage = LocalStorage('model');

  addMessage(String peerNumber, int timestamp, Future future) {
    final key = _getMessageKey(peerNumber, timestamp);
    future.then((_) {
      _messageStatus.remove(key);
    });
    _messageStatus[key] = future;
  }

  addUser(DocumentSnapshot user) {
    userData[user.data[PHONE]] = user.data;
    notifyListeners();
  }

  setWallpaper(String phone, File image) async {
    if (image != null) {
      final dir = await getDir();
      int now = DateTime.now().millisecondsSinceEpoch;
      String path = '${dir.path}/WALLPAPER-$phone-$now';
      await image.copy(path);
      userData[phone][WALLPAPER] = path;
      updateItem(phone, {WALLPAPER: path});
      notifyListeners();
    }
  }

  removeWallpaper(String phone) {
    userData[phone][WALLPAPER] = null;
    String path = userData[phone][ALIAS_AVATAR];
    if (path != null) {
      File(path).delete();
      userData[phone][WALLPAPER] = null;
    }
    updateItem(phone, {WALLPAPER: null});
    notifyListeners();
  }

  getDir() async {
    return await getApplicationDocumentsDirectory();
  }

  save(Map<String, dynamic> doc) async {
    ChatUtils.toast('Saved');
    if (!_savedMessageDocs.any((_doc) => _doc[TIMESTAMP] == doc[TIMESTAMP])) {
      String content;
      if (doc[TYPE] == MessageType.image.index) {
        content = doc[CONTENT].toString().startsWith('http')
            ? await Save.getBase64FromImage(imageUrl: doc[CONTENT] as String)
            : doc[CONTENT]; // if not a url, it is a base64 from saved messages
      } else {
        // If text
        content = doc[CONTENT];
      }
      doc[CONTENT] = content;
      Save.saveMessage(peerNumber, doc);
      _savedMessageDocs.add(doc);
      _savedMessageDocs = List.from(_savedMessageDocs);
      notifyListeners();
    }
  }

  delete(int ts) {
    messages.removeWhere((msg) => msg.timestamp == ts);
    messages = List.from(messages);
    notifyListeners();
  }

  contextMenu(Map<String, dynamic> doc, {bool saved = false}) {
    List<Widget> tiles = List<Widget>();
    if (saved == false) {
      tiles.add(ListTile(
          dense: true,
          leading: Icon(Icons.save_alt),
          title: Text(
            'Save',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          onTap: () {
            save(doc);
            // Navigator.pop(context);
          }));
    }
    if (doc[FROM] == userId && saved == false) {
      tiles.add(ListTile(
          dense: true,
          leading: Icon(Icons.delete),
          title: Text(
            'Delete',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          onTap: () {
            delete(doc[TIMESTAMP]);
            Firestore.instance
                .collection(MESSAGES)
                .document(chatId)
                .collection(chatId)
                .document('${doc[TIMESTAMP]}')
                .delete();
            // Navigator.pop(context);
            ChatUtils.toast('Deleted!');
          }));
    }
    if (saved == true) {
      tiles.add(ListTile(
          dense: true,
          leading: Icon(Icons.delete),
          title: Text(
            'Delete',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          onTap: () {
            Save.deleteMessage(peerNumber, doc);
            _savedMessageDocs
                .removeWhere((msg) => msg[TIMESTAMP] == doc[TIMESTAMP]);
            _savedMessageDocs = List.from(_savedMessageDocs);
            // Navigator.pop(context);
            ChatUtils.toast('Deleted!');
          }));
    }
    if (doc[TYPE] == MessageType.text.index) {
      tiles.add(ListTile(
          dense: true,
          leading: Icon(Icons.content_copy),
          title: Text(
            'Copy',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          onTap: () {
            Clipboard.setData(ClipboardData(text: doc[CONTENT]));
            // Navigator.pop(context);
            ChatUtils.toast('Copied!');
          }));
    }
    // showDialog(
    //     context: context,
    //     builder: (BuildContext context) {
    //       return SimpleDialog(children: tiles);
    //     });
    notifyListeners();
  }

  getImage(File image) {
    if (image != null) {
      imageFile = image;
    }
    notifyListeners();
    return uploadFile();
  }

  Future uploadFile() async {
    uploadTimestamp = DateTime.now().millisecondsSinceEpoch;
    String fileName = "$userId-$uploadTimestamp";
    StorageReference reference = FirebaseStorage.instance.ref().child(fileName);
    StorageTaskSnapshot uploading =
        await reference.putFile(imageFile).onComplete;
    return uploading.ref.getDownloadURL();
  }

  Widget getWalpaper() {
    return Container(
      decoration: new BoxDecoration(
        image: new DecorationImage(
            image: peer[WALLPAPER] == null
                ? AssetImage("assets/bg.png")
                : Image.file(File(peer[WALLPAPER])).image,
            fit: BoxFit.cover),
      ),
    );
  }

  Widget getTextMessage(bool isMe, Map<String, dynamic> doc, bool saved) {
    return Text(
      doc[CONTENT],
      style:
          TextStyle(color: isMe ? enigmaWhite : Colors.black, fontSize: 16.0),
    );
  }

  Widget getImageMessage(Map<String, dynamic> doc, {bool saved = false}) {
    return Container(
      child: saved
          ? Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: Save.getImageFromBase64(doc[CONTENT]).image,
                    fit: BoxFit.cover),
              ),
              width: 200.0,
              height: 200.0,
            )
          : CachedNetworkImage(
              placeholder: (context, url) => Container(
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(enigmaBlue),
                ),
                width: 200.0,
                height: 200.0,
                padding: EdgeInsets.all(80.0),
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  borderRadius: BorderRadius.all(
                    Radius.circular(8.0),
                  ),
                ),
              ),
              errorWidget: (context, str, error) => Material(
                child: Image.asset(
                  'assets/img_not_available.jpeg',
                  width: 200.0,
                  height: 200.0,
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(8.0),
                ),
                clipBehavior: Clip.hardEdge,
              ),
              imageUrl: doc[CONTENT],
              width: 200.0,
              height: 200.0,
              fit: BoxFit.cover,
            ),
    );
  }

  Widget getTempTextMessage(String message) {
    return Text(
      message,
      style: TextStyle(color: enigmaWhite, fontSize: 16.0),
    );
  }

  Widget getTempImageMessage({String url}) {
    return imageFile != null
        ? Container(
            child: Image.file(
              imageFile,
              width: 200.0,
              height: 200.0,
              fit: BoxFit.cover,
            ),
          )
        : getImageMessage({CONTENT: url});
  }

  void onSendMessage(String content, MessageType type, int timestamp) async {
    if (content.trim() != '') {
      content = content.trim();
      if (chatStatus == null) FirestoreChat.request(userId, peerNumber);
      textInput.clear();
      final encrypted = encryption.encryptWithCRC(content);
      if (encrypted is String) {
        Future messaging = Firestore.instance
            .collection(MESSAGES)
            .document(chatId)
            .collection(chatId)
            .document('$timestamp')
            .setData({
          FROM: userId,
          TO: peerNumber,
          TIMESTAMP: timestamp,
          CONTENT: encrypted,
          TYPE: type.index
        });
        addMessage(peerNumber, timestamp, messaging);
        var tempDoc = {
          TIMESTAMP: timestamp,
          TYPE: type.index,
          CONTENT: content,
          FROM: userId,
        };
        messages = List.from(messages)
          ..add(Message(
            SeenProvider(
                timestamp: timestamp.toString(),
                data: "seenState",
                child: Bubble(
                  child: type == MessageType.text
                      ? getTempTextMessage(content)
                      : getTempImageMessage(url: content),
                  isMe: true,
                  timestamp: timestamp,
                  delivered: messaging,
                  isContinuing:
                      messages.isNotEmpty && messages.last.from == userId,
                )),
            onTap: type == MessageType.image
                ? () {}
                // () => Navigator.push(
                //     context,
                //     MaterialPageRoute(
                //       builder: (context) => PhotoViewWrapper(
                //         tag: timestamp.toString(),
                //         imageProvider: CachedNetworkImageProvider(content),
                //       ),
                //     ))
                : null,
            onDismiss: null,
            onDoubleTap: () {
              save(tempDoc);
            },
            onLongPress: () {
              contextMenu(tempDoc);
            },
            from: userId,
            timestamp: timestamp,
          ));

        unawaited(realtime.animateTo(0.0,
            duration: Duration(milliseconds: 300), curve: Curves.easeOut));
      } else {
        ChatUtils.toast('Nothing to send');
      }
    }
    notifyListeners();
  }

  updateItem(String key, Map<String, dynamic> value) {
    Map<String, dynamic> old = _storage.getItem(key) ?? Map<String, dynamic>();
    old.addAll(value);
    _storage.setItem(key, old);
  }

  setAlias(String aliasName, File image, String phone) async {
    userData[phone][ALIAS_NAME] = aliasName ?? null;
    if (image != null) {
      final dir = await getDir();
      int now = DateTime.now().millisecondsSinceEpoch;
      String path = '${dir.path}/$phone-$now';
      await image.copy(path);
      userData[phone][ALIAS_AVATAR] = path;
    }
    updateItem(phone, {
      ALIAS_NAME: userData[phone][ALIAS_NAME],
      ALIAS_AVATAR: userData[phone][ALIAS_AVATAR],
    });
    notifyListeners();
  }

  removeAlias(String phone) {
    userData[phone][ALIAS_NAME] = null;
    String path = userData[phone][ALIAS_AVATAR];
    if (path != null) {
      File(path).delete();
      userData[phone][ALIAS_AVATAR] = null;
    }
    updateItem(phone, {ALIAS_NAME: null, ALIAS_AVATAR: null});
    notifyListeners();
  }

  bool get loaded => _loaded;

  Map<String, dynamic> get currentUser => _currentUser;

  Map<String, dynamic> _currentUser;

  Map<String, int> get lastSpokenAt => _lastSpokenAt;

  Map<String, int> _lastSpokenAt = {};

  getChatOrder(List<String> chatsWith, String userId) {
    List<Stream<QuerySnapshot>> messages = List<Stream<QuerySnapshot>>();
    chatsWith.forEach((otherNo) {
      String chatId = ChatUtils.getChatId(userId, otherNo);
      messages.add(Firestore.instance
          .collection(MESSAGES)
          .document(chatId)
          .collection(chatId)
          .snapshots());
    });
    StreamGroup.merge(messages).listen((snapshot) {
      if (snapshot.documents.isNotEmpty) {
        DocumentSnapshot message = snapshot.documents.last;
        _lastSpokenAt[message[FROM] == userId ? message[TO] : message[FROM]] =
            message[TIMESTAMP];
        notifyListeners();
      }
    });
  }

  BaseChatProvider(String userId) {
    Firestore.instance
        .collection(USERS)
        .document(userId)
        .snapshots()
        .listen((user) {
      _currentUser = user.data;
      notifyListeners();
    });
    _storage.ready.then((ready) {
      if (ready) {
        Firestore.instance
            .collection(USERS)
            .document(userId)
            .collection(CHATS_WITH)
            .document(CHATS_WITH)
            .snapshots()
            .listen((_chatsWith) {
          if (_chatsWith?.data != null) {
            List<Stream<DocumentSnapshot>> users =
                List<Stream<DocumentSnapshot>>();
            List<String> peers = [];
            _chatsWith.data.entries.forEach((_data) {
              peers.add(_data.key);
              users.add(Firestore.instance
                  .collection(USERS)
                  .document(_data.key)
                  .snapshots());
              if (userData[_data.key] != null) {
                userData[_data.key][CHAT_STATUS] = _chatsWith[_data.key];
              }
            });
            getChatOrder(peers, userId);
            notifyListeners();
            Map<String, Map<String, dynamic>> Data =
                Map<String, Map<String, dynamic>>();
            StreamGroup.merge(users).listen((user) {
              if (user.data != null) {
                Data[user[PHONE]] = user.data;
                Data[user[PHONE]][CHAT_STATUS] = _chatsWith[user[PHONE]];
                Map<String, dynamic> _stored = _storage.getItem(user[PHONE]);
                if (_stored != null) {
                  Data[user[PHONE]].addAll(_stored);
                }
              }
              userData = Map.from(Data);
              notifyListeners();
            });
          }
          if (!_loaded) {
            _loaded = true;
            notifyListeners();
          }
        });
      }
    });
    peer = userData[peerNumber];
  }
}
