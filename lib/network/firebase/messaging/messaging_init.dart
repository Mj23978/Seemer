import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:my_chat/config/notification/local_notification.dart';

import '../../../models/firebase/auth_service.dart';

class FCMessaging {
  User user;
  final FirebaseMessaging firebaseMessaging = FirebaseMessaging();

  FCMessaging({this.user});

  void registerNotification() {
    final ln = LocalNotification();

    firebaseMessaging.requestNotificationPermissions();
    firebaseMessaging.configure(onMessage: (Map<String, dynamic> message) {
      print('onMessage: $message');
      ln.showNotification(message['notification']);
      return;
    }, onResume: (Map<String, dynamic> message) {
      print('onResume: $message');
      return;
    }, onLaunch: (Map<String, dynamic> message) {
      print('onLaunch: $message');
      return;
    });

    firebaseMessaging.getToken().then((token) {
      print('token: $token');
      // Firestore.instance
      //     .collection('Users')
      //     .document(user.uid)
      //     .updateData({'pushToken': token});
    }).catchError((err) {
      Fluttertoast.showToast(msg: err.message.toString());
    });
  }
}
