// import 'package:appwrite/appwrite.dart';
// import 'package:appwrite/models.dart';

// import '../../models/call_log/call_log.dart';
// import '../../utils/constants.dart';
// import '../../utils/extensions.dart';

// class AppWriteCallStore {
//   // Client client = Client();
//   // late Database db;

//   AppWriteCallStore() {
//     // client.setEndpoint(Constants.endpoint).setProject(Constants.projectId);
//     // db = Database(client);
//   }

//   static Future<List<CallLog>> userCallLogs(Database db, String uid) async {
//     DocumentList res = await db.listDocuments(
//       collectionId: Constants.callLogsCollectionID,
//       // orderField: 'transactionDate',
//       //orderType: OrderType.desc,
//     );
//     return res.documents.map<CallLog>((e) => CallLog.fromJson(e.data.normalizeGet())).toList();
//     // return FirebaseFirestore.instance
//     //     .collection(FirestoreKeys.users)
//     //     .doc(uid)
//     //     .collection(FirestoreKeys.callLogs)
//     //     .orderBy("timestamp", descending: true)
//     //     .get();
//   }

//   static Future<void> deleteUserCallLog(Database db, String logid) async {
//     await db.deleteDocument(
//       collectionId: Constants.callLogsCollectionID,
//       documentId: logid,
//     );
//     // return FirebaseFirestore.instance
//     //     .collection(FirestoreKeys.users)
//     //     .doc(uid)
//     //     .collection(FirestoreKeys.callLogs)
//     //     .doc()
//     //     .delete();
//   }
  
//   static Future<void> addUserCallLog(Database db, CallLog log) async {
//     Document res = await db.createDocument(
//       collectionId: Constants.callLogsCollectionID,
//       data: log.toJson(),
//       // read: ["user:${transaction.userId}"],
//       // write: ["user:${transaction.userId}"],
//     );
//   }
// }