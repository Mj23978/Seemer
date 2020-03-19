import 'package:flutter/material.dart';
import 'package:my_chat/models/message.dart';
import '../network/firebase/firestore/firestore_chat.dart';
import '../utils/strings.dart';
import '../models/enums/chat_enums.dart';
import 'package:collection/collection.dart';
import 'package:intl/intl.dart';

import '../providers/chat_provider.dart';

class MessageViewWidget extends StatelessWidget {
  final BaseChatProvider chatProvider;
  final sharedSecret;

  getWhen(date) {
    DateTime now = DateTime.now();
    String when;
    if (date.day == now.day)
      when = 'today';
    else if (date.day == now.subtract(Duration(days: 1)).day)
      when = 'yesterday';
    else
      when = DateFormat.MMMd().format(date);
    return when;
  }

  List<Widget> getGroupedMessages() {
    List<Widget> _groupedMessages = new List<Widget>();
    int count = 0;
    groupBy<Message, String>(chatProvider.messages, (msg) {
      return getWhen(DateTime.fromMillisecondsSinceEpoch(msg.timestamp));
    }).forEach((when, _actualMessages) {
      _groupedMessages.add(Center(
          child: Chip(
        label: Text(when),
      )));
      _actualMessages.forEach((msg) {
        count++;
        if (chatProvider.unread != 0 &&
            (chatProvider.messages.length - count) == chatProvider.unread - 1) {
          _groupedMessages.add(Center(
              child: Chip(
            label: Text('${chatProvider.unread} unread messages'),
          )));
          chatProvider.unread = 0;
        }
        _groupedMessages.add(msg.child);
      });
    });
    return _groupedMessages.reversed.toList();
  }

  MessageViewWidget({
    Key key,
    this.chatProvider,
    this.sharedSecret,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (chatProvider.chatStatus == ChatStatus.blocked.index) {
      return AlertDialog(
        backgroundColor: Colors.black12,
        elevation: 10.0,
        title: Text(
          'Unblock ${chatProvider.peer[NICKNAME]}?',
          style: TextStyle(color: enigmaWhite),
        ),
        actions: <Widget>[
          FlatButton(
              child: Text('Cancel'),
              onPressed: () {
                Navigator.pop(context);
              }),
          FlatButton(
              child: Text('Unblock'),
              onPressed: () {
                FirestoreChat.accept(
                    chatProvider.userId, chatProvider.peerNumber);
                // setState(() {
                chatProvider.chatStatus = ChatStatus.accepted.index;
                // });
              })
        ],
      );
    }
    return Flexible(
      child: chatProvider.chatId == '' ||
              chatProvider.messages.isEmpty ||
              sharedSecret == null
          ? ListView(
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(top: 200.0),
                    child: Text(
                        sharedSecret == null ? 'Setting things up.' : 'Say Hi!',
                        textAlign: TextAlign.center,
                        style: TextStyle(color: enigmaWhite, fontSize: 18))),
              ],
              controller: chatProvider.realtime,
            )
          : ListView(
              padding: EdgeInsets.all(10.0),
              children: getGroupedMessages(),
              controller: chatProvider.realtime,
              reverse: true,
            ),
    );
  }
}
