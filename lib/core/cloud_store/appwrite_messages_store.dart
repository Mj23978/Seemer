// import 'package:appwrite/appwrite.dart';
// import 'package:appwrite/models.dart';
// import 'package:test_appwrite/models/message/message.dart';

// import '../../utils/constants.dart';
// import '../../utils/extensions.dart';

// class AppWriteMessagesStore {
//   static Future<List<Message>> userMessages(Database db, String chatId) async {
//     Document res = await db.getDocument(
//       collectionId: Constants.chatsCollectionID,
//       documentId: chatId,
//     );
//     print(res.data);
//     return [];
//     // return res.document.s
//     //     .map<Message>((e) => Message.fromJson(e.data.normalizeGetID()))
//     //     .toList();
//   }

//   static Future<void> deleteMessage(Database db, String chatid) async {
//     await db.deleteDocument(
//       collectionId: Constants.messagesCollectionID,
//       documentId: chatid,
//     );
//   }

//   static Future<void> addMessage(Database db, String chatId, Message message) async {
//     Document res = await db.createDocument(
//       collectionId: Constants.messagesCollectionID,
//       data: message.toJson().normalizeSend(keys: ["id", "type", "tags"]),
//       parentDocument: chatId,
//       parentProperty: "messages",
//       parentPropertyType: "prepend"
//       // read: ["user:${transaction.userId}"],
//       // write: ["user:${transaction.userId}"],
//     );
//   }
// }
