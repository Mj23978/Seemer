import 'package:cloud_firestore/cloud_firestore.dart';

class Group {
  String groupId;
  //final String groupIconPath;
  String groupName;
  //var lastMessageTime;
  List<int> memberIDs;

  DocumentReference documentReference;

  Group({this.groupId, this.groupName, this.memberIDs});

  Group.fromMap(Map<String, dynamic> map, {this.documentReference}) {
    this.groupId = map['id'];
    this.groupName = map['name'];
    this.memberIDs = map['member_ids'];
  }

  Map<String, dynamic> toMap() {
    return {
      'id': this.groupId,
      'name': this.groupName,
      'member_ids': this.memberIDs,
    };
  }
}
