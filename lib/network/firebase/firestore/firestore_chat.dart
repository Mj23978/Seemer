import 'dart:async';
import 'dart:core';

import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../models/enums/chat_enums.dart';
import '../../../models/firebase/chat.dart';
import '../../../models/firebase/user.dart';
import '../../../utils/chat_utils.dart';
import '../../../utils/strings.dart';
import 'firestore_user.dart';

class FirestoreChat {
//  __________E2E____________
  static request(currentUserNo, peerNo) {
    Firestore.instance
        .collection(USERS)
        .document(currentUserNo)
        .collection(CHATS_WITH)
        .document(CHATS_WITH)
        .setData({'$peerNo': ChatStatus.waiting.index}, merge: true);
    Firestore.instance
        .collection(USERS)
        .document(peerNo)
        .collection(CHATS_WITH)
        .document(CHATS_WITH)
        .setData({'$currentUserNo': ChatStatus.requested.index}, merge: true);
  }

  static accept(currentUserNo, peerNo) {
    Firestore.instance
        .collection(USERS)
        .document(currentUserNo)
        .collection(CHATS_WITH)
        .document(CHATS_WITH)
        .setData({'$peerNo': ChatStatus.accepted.index}, merge: true);
  }

  static block(currentUserNo, peerNo) {
    Firestore.instance
        .collection(USERS)
        .document(currentUserNo)
        .collection(CHATS_WITH)
        .document(CHATS_WITH)
        .setData({'$peerNo': ChatStatus.blocked.index}, merge: true);
    Firestore.instance
        .collection(MESSAGES)
        .document(ChatUtils.getChatId(currentUserNo, peerNo))
        .setData({'$currentUserNo': DateTime.now().millisecondsSinceEpoch},
            merge: true);
    ChatUtils.toast('Blocked.');
  }

  static Future<ChatStatus> getStatus(currentUserNo, peerNo) async {
    var doc = await Firestore.instance
        .collection(USERS)
        .document(currentUserNo)
        .collection(CHATS_WITH)
        .document(CHATS_WITH)
        .get();
    return ChatStatus.values[doc[peerNo]];
  }

  static hideChat(currentUserNo, peerNo) {
    Firestore.instance.collection(USERS).document(currentUserNo).setData({
      HIDDEN: FieldValue.arrayUnion([peerNo])
    }, merge: true);
    ChatUtils.toast('Chat hidden.');
  }

  static unHideChat(currentUserNo, peerNo) {
    Firestore.instance.collection(USERS).document(currentUserNo).setData({
      HIDDEN: FieldValue.arrayRemove([peerNo])
    }, merge: true);
    ChatUtils.toast('Chat is visible.');
  }

  static lockChat(currentUserNo, peerNo) {
    Firestore.instance.collection(USERS).document(currentUserNo).setData({
      LOCKED: FieldValue.arrayUnion([peerNo])
    }, merge: true);
    ChatUtils.toast('Chat locked.');
  }

  static unlockChat(currentUserNo, peerNo) {
    Firestore.instance.collection(USERS).document(currentUserNo).setData({
      LOCKED: FieldValue.arrayRemove([peerNo])
    }, merge: true);
    ChatUtils.toast('Chat unlocked.');
  }

//  __________Chat 3____________

  static const String CHATS = "chats",
      RECENT = "recentChats",
      MESSAGES = "messages";

  static Stream<List<Chat>> getChats() async* {
    Firestore firestore = Firestore.instance;
    User user = await FirestoreUser.getUser();
    List<User> activeUsers = await FirestoreUser.getActiveUsers();
    await for (QuerySnapshot snap in firestore
        .collection(RECENT)
        .document(user.id)
        .collection("history")
        .snapshots()) {
      try {
        List<Chat> chats = snap.documents
            .map((doc) => Chat.fromJson(Map<String, dynamic>.from(doc.data)))
            .toList();
        chats.forEach((chat) {
          chat.to.isActive = false;
          chat.from.isActive = false;
          if (chat.to.id != user.id) {
            activeUsers.forEach((temp) {
              if (temp.id == chat.to.id) {
                chat.to.isActive = true;
              }
            });
          } else {
            activeUsers.forEach((temp) {
              if (temp.id == chat.from.id) {
                chat.from.isActive = true;
              }
            });
          }
        });
        yield chats;
      } catch (e) {
        print(e);
      }
    }
  }

  static Future<bool> sendMessage(Chat chat) async {
    try {
      Firestore fireStore = Firestore.instance;
      String id = getUniqueId(chat.from.id, chat.to.id);
      print("ID $id");
      chat.groupId = id;
      fireStore.collection(MESSAGES).add(chat.toJson());
      await saveRecentChat(chat);
      return true;
    } catch (e) {
      print("Exception $e");
      return false;
    }
  }

  static Future saveRecentChat(Chat chat) async {
    List<String> ids = [chat.from.id, chat.to.id];
    for (String id in ids) {
      Firestore fireStore = Firestore.instance;
      Query query = fireStore
          .collection(RECENT)
          .document(id)
          .collection("history")
          .where("groupId", isEqualTo: getUniqueId(chat.from.id, chat.to.id));
      QuerySnapshot documents = await query.getDocuments();
      if (documents.documents.length != 0) {
        DocumentSnapshot documentSnapshot = documents.documents[0];
        documentSnapshot.reference.setData(chat.toJson());
      } else {
        fireStore
            .collection(RECENT)
            .document(id)
            .collection("history")
            .add(chat.toJson());
      }
    }
  }

  static String getUniqueId(String i1, String i2) {
    if (i1.compareTo(i2) <= -1) {
      return i1 + i2;
    } else {
      return i2 + i1;
    }
  }

  static Stream<List<Chat>> listenChat(User from, User to) async* {
    Firestore firestore = Firestore.instance;
    await for (QuerySnapshot snap in firestore
        .collection("messages")
        .where("groupId",
            isEqualTo: getUniqueId(
              from.id,
              to.id,
            ))
        .snapshots()) {
      try {
        List<Chat> chats = snap.documents
            .map((doc) => Chat.fromJson(Map<String, dynamic>.from(doc.data)))
            .toList();
        yield chats;
      } catch (e) {
        print(e);
      }
    }
  }

  static String filterVal(String val) {
    List<String> inCorrects = [":", "#", "\$", "[", "]", "."];
    String filtered = val;
    inCorrects.forEach((val) {
      filtered = filtered.replaceAll(val, "");
    });
    return filtered;
  }

  // static void authenticate(DataModel model, String caption,
  //     {@required NavigatorState state,
  //     AuthenticationType type = AuthenticationType.passcode,
  //     @required SharedPreferences prefs,
  //     @required Function onSuccess,
  //     @required bool shouldPop}) {
  //   Map<String, dynamic> user = model.currentUser;
  //   if (user != null && model != null) {
  //     state.push(MaterialPageRoute<bool>(
  //         builder: (context) => Authenticate(
  //             shouldPop: shouldPop,
  //             caption: caption,
  //             type: type,
  //             model: model,
  //             state: state,
  //             answer: user[ANSWER],
  //             passcode: user[PASSCODE],
  //             question: user[QUESTION],
  //             phoneNo: user[PHONE],
  //             prefs: prefs,
  //             onSuccess: onSuccess)));
  //   }
  // }
}
