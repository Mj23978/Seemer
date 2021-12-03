import 'package:hive/hive.dart';

import '../../models/user/user.dart';
import '../../utils/keys.dart';

class UserHive {
  final box = Hive.box(DBKeys.hive_users);

  Future<void> putUser(User user) async {
    await box.add(user.toJson());
  }

  Future<void> putUsers(List<User> users) async {
    await box.addAll(users.map((v) => v.toJson()));
  }

  Future<void> putUserAt(User user, int index) async {
    await box.putAt(index, user.toJson());
  }

  Future<int> clearUsers() async {
    return await box.clear();
  }

  Future<int> updateUser() async {
    return await box.clear();
  }

  List<User?> getUsers() {
    final usersMap = box.toMap();
    final List<User> users = [];
    for (final project in usersMap.entries) {
      users
          .add(User.fromJson(Map<String, dynamic>.from(project.value)));
    }
    return users;
  }

  User? getUser(int index) {
    if (box.containsKey(index)) {
      final user = Map<String, dynamic>.from(box.getAt(index));
      final res = User.fromJson(user);
      return res;
    }
  }

  User? getUserById(String id) {
    User? res;
    box.values.forEach((e) {
      final user = Map<String, dynamic>.from(e);
      final _res = User.fromJson(user);
      if (_res.uid == id) {
        res = _res;
      } 
    });
    return res;
  }
}
