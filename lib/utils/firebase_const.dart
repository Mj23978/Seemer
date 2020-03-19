import '../models/firebase/auth_service.dart';

const Groups = 'Groups';
const Messages = 'Messages';
const Users = 'Users';

Map<String, dynamic> addMessage(String text, User user) {
  return {
    'text': text,
    'date': DateTime.now().toIso8601String().toString(),
    'from': user.email,
    'uid': user.uid,
    'username': user.username,
    'picture': user.photoUrl,
  };
}

Map<String, dynamic> updateGroup(
    String lastUser, String lastMessage, String time) {
  return {
    'lastUser': lastUser,
    'time': time,
    'lastMessage': lastMessage,
  };
}
