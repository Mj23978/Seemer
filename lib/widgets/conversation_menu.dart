import 'dart:io';

import 'package:flutter/material.dart';

import '../config/image/hybrid_image_picker.dart';
import '../models/enums/chat_enums.dart';
import '../network/firebase/firestore/firestore_chat.dart';
import '../providers/chat_provider.dart';
import '../utils/chat_utils.dart';
import '../utils/strings.dart';

class ConversationMenuWidget extends StatelessWidget {
  final String userId, peerNumber;
  final bool hidden, locked;
  final int chatStatus;
  final Map<String, dynamic> peer;

  BaseChatProvider _chatModel;

  getWallpaper(File image) {
    if (image != null) {
      _chatModel.setWallpaper(peerNumber, image);
    }
    return Future.value(false);
  }

  ConversationMenuWidget({
    Key key,
    this.peerNumber,
    this.userId,
    this.hidden,
    this.locked,
    this.chatStatus,
    this.peer,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      onSelected: (val) {
        switch (val) {
          case 'hide':
            FirestoreChat.hideChat(userId, peerNumber);
            break;
          case 'unhide':
            FirestoreChat.unHideChat(userId, peerNumber);
            break;
          case 'lock':
            FirestoreChat.lockChat(userId, peerNumber);
            break;
          case 'unlock':
            FirestoreChat.unlockChat(userId, peerNumber);
            break;
          case 'block':
            FirestoreChat.block(userId, peerNumber);
            break;
          case 'unblock':
            FirestoreChat.accept(userId, peerNumber);
            ChatUtils.toast('Unblocked.');
            break;
          case 'tutorial':
            ChatUtils.toast(
                'Drag your friend\'s message from left to right to end conversations up until that message.');
            Future.delayed(Duration(seconds: 2)).then((_) {
              ChatUtils.toast(
                  'Swipe left on the screen to view saved messages.');
            });
            break;
          case 'remove_wallpaper':
            _chatModel.removeWallpaper(peerNumber);
            ChatUtils.toast('Wallpaper removed.');
            break;
          case 'set_wallpaper':
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => HybridImagePicker(
                          title: 'Pick an image',
                          callback: getWallpaper,
                        )));
            break;
        }
      },
      itemBuilder: (context) => <PopupMenuItem<String>>[
        PopupMenuItem<String>(
          value: hidden ? 'unhide' : 'hide',
          child: Text(
            '${hidden ? 'Unhide' : 'Hide'} Chat',
          ),
        ),
        PopupMenuItem<String>(
          value: locked ? 'unlock' : 'lock',
          child: Text('${locked ? 'Unlock' : 'Lock'} Chat'),
        ),
        PopupMenuItem<String>(
          value: chatStatus == ChatStatus.blocked.index ?? true
              ? 'unblock'
              : 'block',
          child: Text(
              '${chatStatus == ChatStatus.blocked.index ?? true ? 'Unblock' : 'Block'} Chat'),
        ),
        PopupMenuItem<String>(
            value: 'set_wallpaper', child: Text('Set Wallpaper')),
        peer[WALLPAPER] != null
            ? PopupMenuItem<String>(
                value: 'remove_wallpaper', child: Text('Remove Wallpaper'))
            : null,
        PopupMenuItem<String>(
          child: Text('Show Tutorial'),
          value: 'tutorial',
        )
      ].where((o) => o != null).toList(),
    );
  }
}
