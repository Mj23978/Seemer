import 'package:cloud_firestore/cloud_firestore.dart';

import '../../../models/firebase/group_model.dart';

class FirestoreGroup {
  final _firestore = Firestore.instance;

  final Group group;

  FirestoreGroup({
    this.group,
  });

  insertGroup(group) async {
    await _firestore
        .collection("Groups")
        .document(group.groupId)
        .setData(group.toMap());
  }

  updateGroupName(group) async {
    await _firestore.collection('Groups').document(group.groupId).updateData({
      "Name": group.groupName,
    });
  }

  deleteTodo(String sid) async {
    try {
      _firestore.collection('Groups').document(sid).delete();
    } catch (e) {
      print(e);
    }
  }

  getAllGroups() async {
    await _firestore
        .collection('Groups')
        .getDocuments()
        .then((QuerySnapshot snapshot) {
      snapshot.documents.forEach((f) => print('{f.data}'));
    });
  }
}
