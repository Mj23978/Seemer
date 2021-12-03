// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Message _$$_MessageFromJson(Map<String, dynamic> json) => _$_Message(
      id: json['id'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      text: json['text'] as String,
      status: $enumDecode(_$MessageStatusEnumMap, json['status']),
      from: json['from'] as String,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      silent: json['silent'] as bool? ?? false,
      pinned: json['pinned'] as bool? ?? false,
      likes: json['likes'] as int? ?? 0,
      views: json['views'] as int? ?? 0,
      tags:
          (json['tags'] as List<dynamic>?)?.map((e) => e as String).toList() ??
              [],
      content: (json['content'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      attachments: (json['attachments'] as List<dynamic>?)
              ?.map((e) => Attachment.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      mentionedUsers: (json['mentionedUsers'] as List<dynamic>?)
              ?.map((e) => User.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      extraData: json['extraData'] as Map<String, dynamic>? ?? {},
      replyTo: json['replyTo'] as String?,
      to: json['to'] as String?,
      type: json['type'] as String?,
      reactionCounts: (json['reactionCounts'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as int),
      ),
      reactionScores: (json['reactionScores'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as int),
      ),
      latestReactions: (json['latestReactions'] as List<dynamic>?)
          ?.map((e) => Reaction.fromJson(e as Map<String, dynamic>))
          .toList(),
      ownReactions: (json['ownReactions'] as List<dynamic>?)
          ?.map((e) => Reaction.fromJson(e as Map<String, dynamic>))
          .toList(),
      parentId: json['parentId'] as String?,
      quotedMessage: json['quotedMessage'] == null
          ? null
          : Message.fromJson(json['quotedMessage'] as Map<String, dynamic>),
      quotedMessageId: json['quotedMessageId'] as String?,
      replyCount: json['replyCount'] as int?,
      threadParticipants: (json['threadParticipants'] as List<dynamic>?)
          ?.map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
      showInChannel: json['showInChannel'] as bool?,
      shadowed: json['shadowed'] as bool?,
      command: json['command'] as String?,
      pinnedAt: json['pinnedAt'] == null
          ? null
          : DateTime.parse(json['pinnedAt'] as String),
      pinExpires: json['pinExpires'] == null
          ? null
          : DateTime.parse(json['pinExpires'] as String),
      pinnedBy: json['pinnedBy'] == null
          ? null
          : User.fromJson(json['pinnedBy'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MessageToJson(_$_Message instance) =>
    <String, dynamic>{
      'id': instance.id,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'text': instance.text,
      'status': _$MessageStatusEnumMap[instance.status],
      'from': instance.from,
      'user': instance.user,
      'silent': instance.silent,
      'pinned': instance.pinned,
      'likes': instance.likes,
      'views': instance.views,
      'tags': instance.tags,
      'content': instance.content,
      'attachments': instance.attachments,
      'mentionedUsers': instance.mentionedUsers,
      'extraData': instance.extraData,
      'replyTo': instance.replyTo,
      'to': instance.to,
      'type': instance.type,
      'reactionCounts': instance.reactionCounts,
      'reactionScores': instance.reactionScores,
      'latestReactions': instance.latestReactions,
      'ownReactions': instance.ownReactions,
      'parentId': instance.parentId,
      'quotedMessage': instance.quotedMessage,
      'quotedMessageId': instance.quotedMessageId,
      'replyCount': instance.replyCount,
      'threadParticipants': instance.threadParticipants,
      'showInChannel': instance.showInChannel,
      'shadowed': instance.shadowed,
      'command': instance.command,
      'pinnedAt': instance.pinnedAt?.toIso8601String(),
      'pinExpires': instance.pinExpires?.toIso8601String(),
      'pinnedBy': instance.pinnedBy,
    };

const _$MessageStatusEnumMap = {
  MessageStatus.sending: 'sending',
  MessageStatus.updating: 'updating',
  MessageStatus.deleting: 'deleting',
  MessageStatus.failed: 'failed',
  MessageStatus.failed_update: 'failed_update',
  MessageStatus.failed_delete: 'failed_delete',
  MessageStatus.sent: 'sent',
  MessageStatus.notSent: 'notSent',
  MessageStatus.notViewed: 'notViewed',
  MessageStatus.viewed: 'viewed',
};

_$_Reaction _$$_ReactionFromJson(Map<String, dynamic> json) => _$_Reaction(
      type: json['type'] as String,
      messageId: json['messageId'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      userId: json['userId'] as String?,
      score: json['score'] as int? ?? 0,
      extraData: json['extraData'] as Map<String, dynamic>? ?? {},
    );

Map<String, dynamic> _$$_ReactionToJson(_$_Reaction instance) =>
    <String, dynamic>{
      'type': instance.type,
      'messageId': instance.messageId,
      'createdAt': instance.createdAt?.toIso8601String(),
      'user': instance.user,
      'userId': instance.userId,
      'score': instance.score,
      'extraData': instance.extraData,
    };
