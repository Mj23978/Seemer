import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_chat.freezed.dart';
part 'home_chat.g.dart';

@freezed
class HomeChat with _$HomeChat {
  const factory HomeChat({
    required String id,
    required String chatId,
    required String name,
    required String lastMessage,
    required DateTime time,
    String? image,
  }) = _HomeChat;

  factory HomeChat.fromJson(Map<String, dynamic> json) => _$HomeChatFromJson(json);
}
