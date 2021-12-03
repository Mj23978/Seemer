// import 'package:appwrite/appwrite.dart';
// import 'package:appwrite/models.dart';
// import 'package:test_appwrite/models/enums.dart';
// import 'package:test_appwrite/models/message/message.dart';
// import 'package:test_appwrite/utils/helpers.dart';

// import '../../models/chat/chat.dart';
// import '../../models/home_chat/home_chat.dart';
// import '../../utils/constants.dart';
// import '../../utils/extensions.dart';

// class AppWriteHomeChatStore {
//   static Future<List<HomeChat>> chats(Database db, String uid) async {
//     DocumentList res = await db.listDocuments(
//       collectionId: Constants.homeChatsCollectionID,
//     );
//     return res.documents
//         .map<HomeChat>((e) => HomeChat.fromJson(e.data.normalizeGet()))
//         .toList();
//   }

//   static Future<void> deleteChat(Database db, String chatid) async {
//     await db.deleteDocument(
//       collectionId: Constants.homeChatsCollectionID,
//       documentId: chatid,
//     );
//   }

//   static Future<void> addChat(Database db, HomeChat log) async {
//     Document res = await db.createDocument(
//       collectionId: Constants.homeChatsCollectionID,
//       data: log.toJson(),
//     );
//   }

//   static Future<Chat> getChat(Database db, String chaId) async {
//     Document res = await db.getDocument(
//       collectionId: Constants.homeChatsCollectionID,
//       documentId: chaId,
//     );
//     return Chat.fromJson(res.data.normalizeGet());
//   }
// }

// class AppWriteChatStore {
//   static Future<List<Chat>> chats(Database db, String uid) async {
//     DocumentList res = await db.listDocuments(
//       collectionId: Constants.chatsCollectionID,
//     );
//     return res.documents
//         .map<Chat>((e) => Chat.fromJson(e.data.normalizeGet()))
//         .toList();
//   }

//   static Future<void> deleteChat(Database db, String chatid) async {
//     await db.deleteDocument(
//       collectionId: Constants.chatsCollectionID,
//       documentId: chatid,
//     );
//     final hc = await db
//         .listDocuments(collectionId: Constants.homeChatsCollectionID, filters: [
//       "chatId=$chatid",
//     ]);
//     if (hc.sum > 0) {
//       await db.deleteDocument(
//         collectionId: Constants.homeChatsCollectionID,
//         documentId: hc.documents.first.$id,
//       );
//     }
//   }

//   static Future<void> addChat(Database db, Chat chat) async {
//     try {
//       Document res = await db.createDocument(
//         collectionId: Constants.chatsCollectionID,
//         data: chat.toJson().normalizeSend(),
//       );
//       await db.createDocument(
//         collectionId: Constants.homeChatsCollectionID,
//         data: HomeChat(
//           id: "",
//           chatId: res.$id,
//           name: chat.name,
//           image: chat.image,
//           lastMessage: "Start Sending Messages to ${chat.name}",
//           time: DateTime.now(),
//         ).toJson().normalizeSend(),
//       );
//       print(res.data);
//     } catch (e) {
//       print(e);
//     }
//   }

//   static Future<Chat?> getChat(Database db, String chaId) async {
//     try {
//       Document res = await db.getDocument(
//         collectionId: Constants.chatsCollectionID,
//         documentId: chaId,
//       );
//       return Chat.fromJsonDB(res.data);
//     } catch (e) {
//       print(e);
//     }
//   }
// }
