import '../../generated/user.pb.dart';
import '../../generated/user.pbgrpc.dart';
import '../../models/user/user.dart' as us;
import '../../utils/helpers.dart';

us.User fromGrpcUser(User u) {
  final us.User res = us.User(
    email: u.email,
    username: u.username,
    uid: u.id 
  );
  return res;
}

User toGrpcUser(us.User u) {
  final User res = User()
    ..email = u.email!
    ..username = u.username!
    ..id = u.uid;
  return res;
}
