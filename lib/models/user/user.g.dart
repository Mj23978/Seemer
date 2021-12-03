// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      uid: json['uid'] as String,
      displayName: json['displayName'] as String?,
      isActive: json['isActive'] as bool?,
      email: json['email'] as String?,
      role: json['role'] as String?,
      photoUrl: json['photoUrl'] as String?,
      username: json['username'] as String?,
      lastActive: json['lastActive'] == null
          ? null
          : DateTime.parse(json['lastActive'] as String),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'uid': instance.uid,
      'displayName': instance.displayName,
      'isActive': instance.isActive,
      'email': instance.email,
      'role': instance.role,
      'photoUrl': instance.photoUrl,
      'username': instance.username,
      'lastActive': instance.lastActive?.toIso8601String(),
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'type': instance.$type,
    };

_$OwnUser _$$OwnUserFromJson(Map<String, dynamic> json) => _$OwnUser(
      uid: json['uid'] as String,
      mutes: (json['mutes'] as List<dynamic>)
          .map((e) => Mute.fromJson(e as Map<String, dynamic>))
          .toList(),
      channelMutes: (json['channelMutes'] as List<dynamic>)
          .map((e) => Mute.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalUnreadCount: json['totalUnreadCount'] as int,
      unreadChannels: json['unreadChannels'] as int,
      displayName: json['displayName'] as String?,
      isActive: json['isActive'] as bool?,
      email: json['email'] as String?,
      photoUrl: json['photoUrl'] as String?,
      username: json['username'] as String?,
      role: json['role'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      lastActive: json['lastActive'] == null
          ? null
          : DateTime.parse(json['lastActive'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      online: json['online'] as bool? ?? false,
      extraData: json['extraData'] as Map<String, dynamic>? ?? {},
      banned: json['banned'] as bool? ?? false,
      teams:
          (json['teams'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              [],
      language: json['language'] as String?,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$OwnUserToJson(_$OwnUser instance) => <String, dynamic>{
      'uid': instance.uid,
      'mutes': instance.mutes,
      'channelMutes': instance.channelMutes,
      'totalUnreadCount': instance.totalUnreadCount,
      'unreadChannels': instance.unreadChannels,
      'displayName': instance.displayName,
      'isActive': instance.isActive,
      'email': instance.email,
      'photoUrl': instance.photoUrl,
      'username': instance.username,
      'role': instance.role,
      'createdAt': instance.createdAt?.toIso8601String(),
      'lastActive': instance.lastActive?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'online': instance.online,
      'extraData': instance.extraData,
      'banned': instance.banned,
      'teams': instance.teams,
      'language': instance.language,
      'type': instance.$type,
    };

_$_Mute _$$_MuteFromJson(Map<String, dynamic> json) => _$_Mute(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$_MuteToJson(_$_Mute instance) => <String, dynamic>{
      'user': instance.user,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
