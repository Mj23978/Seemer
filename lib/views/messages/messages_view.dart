import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../core/app_provider.dart';
import '../../core/providers.dart';
import '../../models/chat/chat.dart';
import '../../models/enums.dart';
import '../../models/message/message.dart';
import '../../models/user/user.dart';
import '../../widgets/init_builder.dart';
import 'messages_list_view.dart';

class MessagesView extends HookConsumerWidget {
  MessagesView({
    Key? key,
    required this.chatId,
    this.name,
    this.image,
  }) : super(key: key);

  List<Message> _messages = [];
  final _messageController = TextEditingController();
  final String chatId;
  final String? name;
  final String? image;

  // Future<List<Message>> _getChatMessages(AppProvider app) async {
  //   print("Kir");
  //   try {
  //     final messages = await AppWriteMessagesStore.userMessages(app.db, chatId);
  //     return messages;
  //   } catch (e) {
  //     print(e);
  //   }
  //   return [];
  // }
  Future<Chat?> _getChat(AppProvider app) async {
    // print("Hello");
    // final chat = await AppWriteChatStore.getChat(app.db, chatId);
    // return chat;
    return Chat(id: "id", name: "name");
  }

  @override
  Widget build(BuildContext context, ref) {
    final app = ref.read(appProvider);
    // final future = useMemoized(() async {
    //   return await _getChat(app);
    // }, []);
    // final bloc = ref.watch(homeBlocProvider.notifier);
    return _PageTemplate(
      child: InitBuilder.arg1<Future<Chat?>, AppProvider>(
          arg: app,
          getter: _getChat,
          builder: (context, future) {
            return FutureBuilder<Chat?>(
              future: future,
              builder: (context, future) {
                if (future.connectionState != ConnectionState.active &&
                    !future.hasData) {
                  return Center(child: CircularProgressIndicator());
                }
                _messages = future.data!.messages;
                // print(future.data!);
                return StreamBuilder(
                  stream: StreamController().stream,
                  builder: (context, snapshot) {
                    // return const MessageListView();
                    return Column(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: ListView.builder(
                              reverse: true,
                              itemCount: _messages.length,
                              itemBuilder: (context, index) => ChatMessage(
                                message: _messages[index],
                                user: ref.read(authProvider).user!,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 8,
                          ),
                          decoration: BoxDecoration(
                            color: Theme.of(context).scaffoldBackgroundColor,
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 4),
                                blurRadius: 32,
                                color:
                                    const Color(0xFF087949).withOpacity(0.08),
                              ),
                            ],
                          ),
                          child: SafeArea(
                            child: Row(
                              children: [
                                const Icon(Icons.mic, color: Colors.green),
                                const SizedBox(width: 16),
                                Expanded(
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 16 * 0.75,
                                    ),
                                    decoration: BoxDecoration(
                                      color: Colors.green.withOpacity(0.05),
                                      borderRadius: BorderRadius.circular(40),
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons
                                              .sentiment_satisfied_alt_outlined,
                                          color: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .color!
                                              .withOpacity(0.64),
                                        ),
                                        const SizedBox(width: 4),
                                        Expanded(
                                          child: TextField(
                                            controller: _messageController,
                                            decoration: InputDecoration(
                                              hintText: "Type message",
                                              border: InputBorder.none,
                                            ),
                                            onEditingComplete: () {
                                              // AppWriteMessagesStore.addMessage(
                                              //   app.db,
                                              //   chatId,
                                              //   Message(
                                              //     id: "",
                                              //     createdAt: DateTime.now(),
                                              //     updatedAt: DateTime.now(),
                                              //     text: _messageController.text,
                                              //     status:
                                              //         MessageStatus.notViewed,
                                              //     from: ref
                                              //         .read(authProvider)
                                              //         .user!
                                              //         .uid,
                                              //   ),
                                              // );
                                            },
                                          ),
                                        ),
                                        Icon(
                                          Icons.attach_file,
                                          color: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .color!
                                              .withOpacity(0.64),
                                        ),
                                        const SizedBox(width: 4),
                                        Icon(
                                          Icons.camera_alt_outlined,
                                          color: Theme.of(context)
                                              .textTheme
                                              .bodyText1!
                                              .color!
                                              .withOpacity(0.64),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                );
              },
            );
          }),
    );
  }
}

class _PageTemplate extends StatelessWidget {
  const _PageTemplate({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: child,
    );
  }
}

class ChatMessage extends StatelessWidget {
  const ChatMessage({
    Key? key,
    required this.message,
    required this.user,
  }) : super(key: key);

  final Message message;
  final User user;

  @override
  Widget build(BuildContext context) {
    Widget messageContaint(Message message) {
      switch (message.mType) {
        case MessageType.text:
          return TextMessage(
            message: message,
            user: user,
          );
        case MessageType.audio:
          return AudioMessage(
            message: message,
            user: user,
          );
        case MessageType.video:
          return VideoMessage();
        default:
          return SizedBox();
      }
    }

    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Row(
        mainAxisAlignment: message.isSender(user.uid)
            ? MainAxisAlignment.end
            : MainAxisAlignment.start,
        children: [
          if (!message.isSender(user.uid)) ...[
            const CircleAvatar(
              radius: 12,
              backgroundImage: AssetImage("assets/images/user_2.png"),
            ),
            SizedBox(width: 8),
          ],
          messageContaint(message),
          if (message.isSender(user.uid))
            MessageStatusDot(status: message.status)
        ],
      ),
    );
  }
}

class MessageStatusDot extends StatelessWidget {
  final MessageStatus? status;

  const MessageStatusDot({Key? key, this.status}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Color dotColor(MessageStatus status) {
      switch (status) {
        case MessageStatus.notSent:
          return Colors.red;
        case MessageStatus.notViewed:
          return Theme.of(context).textTheme.bodyText1!.color!.withOpacity(0.1);
        case MessageStatus.viewed:
          return Colors.green;
        default:
          return Colors.transparent;
      }
    }

    return Container(
      margin: EdgeInsets.only(left: 8),
      height: 12,
      width: 12,
      decoration: BoxDecoration(
        color: dotColor(status!),
        shape: BoxShape.circle,
      ),
      child: Icon(
        status == MessageStatus.notSent ? Icons.close : Icons.done,
        size: 8,
        color: Theme.of(context).scaffoldBackgroundColor,
      ),
    );
  }
}

class VideoMessage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.45, // 45% of total width
      child: AspectRatio(
        aspectRatio: 1.6,
        child: Stack(
          alignment: Alignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset("assets/images/Video Place Here.png"),
            ),
            Container(
              height: 25,
              width: 25,
              decoration: const BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.play_arrow,
                size: 16,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TextMessage extends StatelessWidget {
  const TextMessage({
    Key? key,
    required this.message,
    required this.user,
  }) : super(key: key);

  final Message message;
  final User user;

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: MediaQuery.of(context).platformBrightness == Brightness.dark
      //     ? Colors.white
      //     : Colors.black,
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        color: Colors.green.withOpacity(message.isSender(user.uid) ? 1 : 0.1),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Text(
        message.text,
        style: TextStyle(
          color: message.isSender(user.uid)
              ? Colors.white
              : Theme.of(context).textTheme.bodyText1!.color,
        ),
      ),
    );
  }
}

class AudioMessage extends StatelessWidget {
  final Message message;
  final User user;

  const AudioMessage({
    Key? key,
    required this.message,
    required this.user,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.55,
      padding: EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 35,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.green.withOpacity(message.isSender(user.uid) ? 1 : 0.1),
      ),
      child: Row(
        children: [
          Icon(
            Icons.play_arrow,
            color: message.isSender(user.uid) ? Colors.white : Colors.green,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  Container(
                    width: double.infinity,
                    height: 2,
                    color: message.isSender(user.uid)
                        ? Colors.white
                        : Colors.green.withOpacity(0.4),
                  ),
                  Positioned(
                    left: 0,
                    child: Container(
                      height: 8,
                      width: 8,
                      decoration: BoxDecoration(
                        color: message.isSender(user.uid)
                            ? Colors.white
                            : Colors.green,
                        shape: BoxShape.circle,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Text(
            "0.37",
            style: TextStyle(
                fontSize: 12,
                color: message.isSender(user.uid) ? Colors.white : null),
          ),
        ],
      ),
    );
  }
}