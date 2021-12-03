import 'package:hive/hive.dart';

import '../../models/message/message.dart';
import '../../utils/keys.dart';

class MessageHive {
  final box = Hive.box(DBKeys.hive_messages);

  Future<void> putMessage(Message message) async {
    await box.add(message.toJson());
  }
  
  Future<void> putMessages(List<Message> messages) async {
    await box.addAll(messages.map((v) => v.toJson()));
  }

  Future<void> putMessageAt(Message message, int index) async {
    await box.putAt(index, message.toJson());
  }

  Future<int> clearMessages() async {
    return await box.clear();
  }

  Future<int> updateMessage() async {
    return await box.clear();
  }

  List<Message> getMessages() {
    final messagesMap = box.toMap();
    final List<Message> messages = [];
    for (final project in messagesMap.entries) {
      messages.add(Message.fromJson(Map<String, dynamic>.from(project.value)));
    }
    return messages;
  }

  Message getMessage(int index) {
    final message = Map<String, dynamic>.from(box.getAt(index));
    final res = Message.fromJson(message);
    return res;
  }
}
