// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'member.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Member _$$_MemberFromJson(Map<String, dynamic> json) => _$_Member(
      invited: json['invited'] as bool? ?? false,
      banned: json['banned'] as bool? ?? false,
      shadowBanned: json['shadowBanned'] as bool? ?? false,
      isModerator: json['isModerator'] as bool? ?? false,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      inviteAcceptedAt: json['inviteAcceptedAt'] == null
          ? null
          : DateTime.parse(json['inviteAcceptedAt'] as String),
      inviteRejectedAt: json['inviteRejectedAt'] == null
          ? null
          : DateTime.parse(json['inviteRejectedAt'] as String),
      role: json['role'] as String?,
      userId: json['userId'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$_MemberToJson(_$_Member instance) => <String, dynamic>{
      'invited': instance.invited,
      'banned': instance.banned,
      'shadowBanned': instance.shadowBanned,
      'isModerator': instance.isModerator,
      'user': instance.user,
      'inviteAcceptedAt': instance.inviteAcceptedAt?.toIso8601String(),
      'inviteRejectedAt': instance.inviteRejectedAt?.toIso8601String(),
      'role': instance.role,
      'userId': instance.userId,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
