import 'package:hive/hive.dart';

class UserHive {
  final userHive = Hive.box('user');

  Future<String> setUser(
      {String email, String username, String uid, String photoUrl}) async {
    await userHive.put("email", email);
    await userHive.put("username", username);
    await userHive.put("uid", uid);
    await userHive.put("photoUrl", photoUrl);
    return "The Operations Was Successful";
  }

  Future<void> setEmail(String email) async {
    final res = await userHive.put("email", email);
    return res;
  }

  Future getEmail() async {
    final res = await userHive.get("email");
    return res;
  }

  Future<int> clear() async {
    final res = await userHive.clear();
    return res;
  }
}
