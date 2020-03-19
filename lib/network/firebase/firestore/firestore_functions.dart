import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';

import '../../../config/db/user_hive.dart';
import '../../../models/firebase/auth_service.dart';
import '../../../utils/firebase_const.dart' as FirebaseConst;

class FirestoreFunctions {
  User user;
  bool dialogueUp = false;

  final Firestore _firestore = Firestore.instance;

  FirestoreFunctions({this.user});

  Stream<QuerySnapshot> groupMessages(groupId) {
    return _firestore
        .collection(FirebaseConst.Groups)
        .document(groupId)
        .collection(FirebaseConst.Messages)
        .orderBy('date')
        .snapshots();
  }

  Future<void> callback({groupId, messageController, scrollController}) async {
    String text = messageController.text;
    if (text.length > 0) {
      await _firestore
          .collection(FirebaseConst.Groups)
          .document(groupId)
          .collection(FirebaseConst.Messages)
          .add(FirebaseConst.addMessage(text, user));
      messageController.clear();
      scrollController.animateTo(
        scrollController.position.minScrollExtent,
        curve: Curves.easeOut,
        duration: const Duration(milliseconds: 300),
      );
    }
    _updateGroupPageText(
        groupId,
        user.username,
        text,
        formatDate(DateTime.now(), [yy, '-', M, '-', d, '-', hh, ":", nn, am])
            .toString());
  }

  _updateGroupPageText(
      String groupId, String lastUser, String lastMessage, String time) {
    if (lastMessage.length > 20) {
      lastMessage = lastMessage.substring(0, 20) + "...";
    }
    Firestore.instance
        .collection(FirebaseConst.Groups)
        .document(groupId)
        .updateData(FirebaseConst.updateGroup(lastUser, lastMessage, time));
  }

  DocumentReference getGroup(groupId) {
    return _firestore.collection(FirebaseConst.Groups).document(groupId);
  }

  getUser() async {
    final userDB = UserHive();

    _firestore
        .collection(FirebaseConst.Users)
        .document(user.uid)
        .get()
        .then((doc) async {
      if (doc.exists && doc.data['username'] != null) {
        print("user exists");
        print("username: " + doc.data['username']);
        await userDB.setUser(
            username: doc.data['username'],
            photoUrl: doc.data['photoUrl'],
            email: doc.data['email'],
            uid: doc.data['uid']);
      } else if (!dialogueUp) {
        dialogueUp = true;
        print("user does not exist");
//      showDialog(
//        context: context,
//        builder: (_) => AlertDialog(
//          shape: RoundedRectangleBorder(
//              borderRadius: BorderRadius.all(Radius.circular(10))),
//          elevation: 24.0,
//          title: Text(
//            "Choose Username",
//            style: TextStyle(color: Colors.lightBlue),
//          ),
//          content: SingleChildScrollView(
//            child: ListBody(
//              children: <Widget>[
//                TextField(
//                  decoration: InputDecoration(
//                    border: InputBorder.none,
//                    hintText: 'Username',
//                  ),
//                  onChanged: (value) {
//                    newUsername = value;
//                  },
//                ),
//                TextField(
//                  decoration: InputDecoration(
//                    border: InputBorder.none,
//                    hintText: 'Image URL',
//                  ),
//                  onChanged: (value) {
//                    newImageURL = value;
//                  },
//                ),
//              ],
//            ),
//          ),
//          actions: <Widget>[
//            FlatButton(
//              child: Text("Done"),
//              onPressed: () {
//                _firestore.collection("Users").document(user.uid).setData({
//                  'username': newUsername,
//                  'picture': newImageURL,
//                });
//                Navigator.of(context, rootNavigator: true).pop('dialog');
//                user.userName = newUsername;
//                user.picture = newImageURL;
//                User u = Provider.of<User>(context);
//                print('username: ' + u.userName);
//              },
//            ),
//          ],
//        ),
//        barrierDismissible: true,
//      );
      }
    });
    return "";
  }
}
