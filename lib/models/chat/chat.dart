import 'package:freezed_annotation/freezed_annotation.dart';

import '../enums.dart';
import '../message/message.dart';

part 'chat.freezed.dart';
part 'chat.g.dart';

@freezed
class Chat with _$Chat {
  const factory Chat({
    required String id,
    required String name,
    @Default([]) List<String> members,
    @Default([]) List<Message> messages,
    @Default([]) List<String> typingMembers,
    String? image,
  }) = _Chat;

  factory Chat.fromJson(Map<String, dynamic> json) => _$ChatFromJson(json);

  factory Chat.fromJsonDB(Map<String, dynamic> data) {
    var messages = <Message>[];
    if (data.containsKey("messages")) {
      final _messages = (data["messages"] as List).cast<Map<String, dynamic>>();
      // print(_messages);
      messages = _messages
          .map<Message>((e) => Message(
                id: e["\$id"],
                createdAt: DateTime.parse((e["createdAt"] ?? e["publishedAt"])),
                updatedAt: DateTime.parse((e["updatedAt"] ?? e["publishedAt"])),
                text: e["text"],
                status: MessageStatus.values.firstWhere((el) =>
                    el.toString().split('.')[1].toUpperCase() ==
                    e["status"].toString().toUpperCase()),
                from: e["from"],
              ))
          .toList();
    }
    // print(messages);
    return _Chat(
      id: data["\$id"],
      name: data["name"],
      image: data["image"],
      messages: messages,
    );
  }
}
