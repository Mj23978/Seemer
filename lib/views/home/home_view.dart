import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../core/app_provider.dart';
import '../../models/home_chat/home_chat.dart';
import '../../core/providers.dart';
import '../../utils/constants.dart';
import '../../widgets/cards/chat_cards.dart';
import '../../widgets/init_builder.dart';
import '../messages/messages_view.dart';

class HomeView extends ConsumerWidget {
  HomeView({Key? key, required this.cs}) : super(key: key);

  final BoxConstraints cs;

  Future<List<HomeChat>> getChats(AppProvider app, uid) async {
    if (app.chats.isNotEmpty) {
      return app.chats;
    }
    try {
      // final res = await AppWriteHomeChatStore.chats(app.db, uid);
      // return res;
    } catch (e) {
      print(e);
    }
    return [];
  }

  @override
  Widget build(BuildContext context, ref) {
    final app = ref.watch(appProvider);
    return InitBuilder.arg2<Future<List<HomeChat>>, AppProvider, String>(
      getter: getChats,
      arg1: app,
      arg2: ref.read(authProvider).user?.uid ?? "",
      builder: (context, future) {
        return FutureBuilder<List<HomeChat>>(
          future: future,
          builder: (context, future) {
            if (future.connectionState != ConnectionState.active &&
                !future.hasData) {
              return Center(child: CircularProgressIndicator());
            }
            app.chats = future.data!;
            return StreamBuilder(
              stream: StreamController().stream,
              // stream: app.realtime.subscribe([
              //   'collections.${Constants.homeChatsCollectionID}.documents'
              // ]).stream,
              builder: (context, snapshot) {
                return Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        itemCount: app.chats.length,
                        itemBuilder: (context, index) => ChatCard(
                          chat: app.chats[index],
                          press: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MessagesView(
                                chatId: app.chats[index].chatId,
                                // chatId: app.chats[index].id,
                                name: app.chats[index].name,
                                image: app.chats[index].image,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              },
            );
          },
        );
      },
    );
  }
}
