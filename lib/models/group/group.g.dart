// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Group _$$_GroupFromJson(Map<String, dynamic> json) => _$_Group(
      id: json['id'] as String,
      groupName: json['groupName'] as String,
      groupImage: json['groupImage'] as String?,
      lastMessageTime: json['lastMessageTime'] == null
          ? null
          : DateTime.parse(json['lastMessageTime'] as String),
      memberIDs:
          (json['memberIDs'] as List<dynamic>?)?.map((e) => e as int).toList(),
    );

Map<String, dynamic> _$$_GroupToJson(_$_Group instance) => <String, dynamic>{
      'id': instance.id,
      'groupName': instance.groupName,
      'groupImage': instance.groupImage,
      'lastMessageTime': instance.lastMessageTime?.toIso8601String(),
      'memberIDs': instance.memberIDs,
    };
