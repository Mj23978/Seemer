// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_chat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_HomeChat _$$_HomeChatFromJson(Map<String, dynamic> json) => _$_HomeChat(
      id: json['id'] as String,
      chatId: json['chatId'] as String,
      name: json['name'] as String,
      lastMessage: json['lastMessage'] as String,
      time: DateTime.parse(json['time'] as String),
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$_HomeChatToJson(_$_HomeChat instance) =>
    <String, dynamic>{
      'id': instance.id,
      'chatId': instance.chatId,
      'name': instance.name,
      'lastMessage': instance.lastMessage,
      'time': instance.time.toIso8601String(),
      'image': instance.image,
    };
