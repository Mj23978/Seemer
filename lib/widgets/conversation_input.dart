import 'package:flutter/material.dart';

import '../config/image/hybrid_image_picker.dart';
import '../models/enums/chat_enums.dart';
import '../network/firebase/firestore/firestore_chat.dart';
import '../providers/chat_provider.dart';
import '../utils/strings.dart';

class ConversationInputWidget extends StatelessWidget {
  final BaseChatProvider chatProvider;

  ConversationInputWidget({
    Key key,
    @required this.chatProvider,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (chatProvider.chatStatus == ChatStatus.requested.index) {
      return AlertDialog(
        backgroundColor: Colors.black12,
        elevation: 10.0,
        title: Text(
          'Accept ${chatProvider.peer[NICKNAME]}\'s invitation?',
          // style: TextStyle(color: enigmaWhite),
        ),
        actions: <Widget>[
          FlatButton(
              child: Text('Reject'),
              onPressed: () {
                FirestoreChat.block(chatProvider.userId, chatProvider.peerNumber);
                // setState(() {
                chatProvider.chatStatus = ChatStatus.blocked.index;
                // });
              }),
          FlatButton(
              child: Text('Accept'),
              onPressed: () {
                FirestoreChat.accept(chatProvider.userId, chatProvider.peerNumber);
                // setState(() {
                chatProvider.chatStatus = ChatStatus.accepted.index;
                // });
              })
        ],
      );
    }
    return Container(
      child: Row(
        children: <Widget>[
          IconButton(
              color: enigmaWhite,
              padding: EdgeInsets.all(0.0),
              icon: Icon(Icons.gif, size: 40),
              onPressed: () async {
                // final gif = await GiphyPicker.pickGif(
                //     context: context,
                //     apiKey: 'PkjPKUvd84HUEd2GGStxDxW8za02HBti');
                // onSendMessage(gif.images.original.url, MessageType.image,
                //     DateTime.now().millisecondsSinceEpoch);
              }),
          IconButton(
            icon: new Icon(Icons.image),
            padding: EdgeInsets.all(0.0),
            onPressed: chatProvider.chatStatus == ChatStatus.blocked.index
                ? null
                : () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => HybridImagePicker(
                                  title: 'Pick an image',
                                  callback: chatProvider.getImage,
                                ))).then((url) {
                      if (url != null) {
                        chatProvider.onSendMessage(
                            url, MessageType.image, chatProvider.uploadTimestamp);
                      }
                    });
                  },
            color: enigmaWhite,
          ),
          Flexible(
            child: Container(
              child: TextField(
                maxLines: null,
                style: TextStyle(fontSize: 18.0, color: enigmaWhite),
                controller: chatProvider.textInput,
                decoration: InputDecoration.collapsed(
                  hintText: 'Type your message',
                  hintStyle: TextStyle(color: Colors.grey),
                ),
              ),
            ),
          ),
          // Button send message
          IconButton(
            icon: new Icon(Icons.send),
            onPressed: chatProvider.chatStatus == ChatStatus.blocked.index
                ? null
                : () => chatProvider.onSendMessage(chatProvider.textInput.text,
                    MessageType.text, DateTime.now().millisecondsSinceEpoch),
            // color: enigmaWhite,
          ),
        ],
      ),
      width: double.infinity,
      height: 60.0,
      decoration: new BoxDecoration(
        border:
            new Border(top: new BorderSide(color: Colors.black, width: 0.5)),
        color: enigmaBlack,
      ),
    );
  }
}
