// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'story.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Story _$$_StoryFromJson(Map<String, dynamic> json) => _$_Story(
      id: json['id'] as String,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      publishedAt: DateTime.parse(json['publishedAt'] as String),
      isSeen: json['isSeen'] as bool?,
      images:
          (json['images'] as List<dynamic>?)?.map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_StoryToJson(_$_Story instance) => <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'publishedAt': instance.publishedAt.toIso8601String(),
      'isSeen': instance.isSeen,
      'images': instance.images,
    };
