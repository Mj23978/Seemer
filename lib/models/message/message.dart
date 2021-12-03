import 'package:freezed_annotation/freezed_annotation.dart';

import '../enums.dart';
import '../user/user.dart';
import '../attachment/attachment.dart';

part 'message.freezed.dart';
part 'message.g.dart';

@freezed
class Message with _$Message {
  const factory Message({
    required String id,
    required DateTime createdAt,
    required DateTime updatedAt,
    required String text,
    required MessageStatus status,
    required String from,
    User? user,
    @Default(false) bool silent,
    @Default(false) bool pinned,
    @Default(0) int likes,
    @Default(0) int views,
    @Default([]) List<String> tags,
    @Default([]) List<String> content,
    @Default([]) List<Attachment> attachments,
    @Default([]) List<User> mentionedUsers,
    @Default({}) Map<String, Object?> extraData,
    String? replyTo,
    String? to,
    String? type,
    Map<String, int>? reactionCounts,
    Map<String, int>? reactionScores,
    List<Reaction>? latestReactions,
    List<Reaction>? ownReactions,
    String? parentId,
    Message? quotedMessage,
    String? quotedMessageId,
    int? replyCount,
    List<User>? threadParticipants,
    bool? showInChannel,
    bool? shadowed,
    String? command,
    DateTime? pinnedAt,
    DateTime? pinExpires,
    User? pinnedBy,
  }) = _Message;


  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}

@freezed
class Reaction with _$Reaction {
  const factory Reaction({
    required String type,
    String? messageId,
    DateTime? createdAt,
    User? user,
    String? userId,
    @Default(0) int score,
    @Default({}) Map<String, Object?> extraData,
  }) = _Reaction;

  factory Reaction.fromJson(Map<String, dynamic> json) =>
      _$ReactionFromJson(json);

}

extension MessageExt on Message {
  bool isSender(String userId) => userId == this.from;

  MessageType get mType {
    if (this.content.isNotEmpty) {
      for (var e in this.content) {
        final regExvideoTypes = RegExp(r"(http|ftp|https)://([\w+?\.\w+])+([a-zA-Z0-9\~\!\@\#\$\%\^\&\*\(\)_\-\=\+\\\/\?\.\:\;\'\,]*)?\.(mp4|mkv|avi)");
        if (e.contains(regExvideoTypes)) {
          return MessageType.video;
        } 
        final regExImageTypes = RegExp(r"(http|ftp|https)://([\w+?\.\w+])+([a-zA-Z0-9\~\!\@\#\$\%\^\&\*\(\)_\-\=\+\\\/\?\.\:\;\'\,]*)?\.(png|jpg|jpeg)");
        if (e.contains(regExImageTypes)) {
          return MessageType.image;
        }
        final regExAudioTypes = RegExp(r"(http|ftp|https)://([\w+?\.\w+])+([a-zA-Z0-9\~\!\@\#\$\%\^\&\*\(\)_\-\=\+\\\/\?\.\:\;\'\,]*)?\.(mp3|aac)");
        if (e.contains(regExAudioTypes)) {
          return MessageType.audio;
        }
      }
    }
    return MessageType.text;
  }

  bool get isEphemeral => this.type == 'ephemeral';

  bool get isSystem => this.type == 'system';

  bool get isDeleted => this.type == 'deleted';

}
