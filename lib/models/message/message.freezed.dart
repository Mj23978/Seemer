// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Message _$MessageFromJson(Map<String, dynamic> json) {
  return _Message.fromJson(json);
}

/// @nodoc
class _$MessageTearOff {
  const _$MessageTearOff();

  _Message call(
      {required String id,
      required DateTime createdAt,
      required DateTime updatedAt,
      required String text,
      required MessageStatus status,
      required String from,
      User? user,
      bool silent = false,
      bool pinned = false,
      int likes = 0,
      int views = 0,
      List<String> tags = const [],
      List<String> content = const [],
      List<Attachment> attachments = const [],
      List<User> mentionedUsers = const [],
      Map<String, Object?> extraData = const {},
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
      User? pinnedBy}) {
    return _Message(
      id: id,
      createdAt: createdAt,
      updatedAt: updatedAt,
      text: text,
      status: status,
      from: from,
      user: user,
      silent: silent,
      pinned: pinned,
      likes: likes,
      views: views,
      tags: tags,
      content: content,
      attachments: attachments,
      mentionedUsers: mentionedUsers,
      extraData: extraData,
      replyTo: replyTo,
      to: to,
      type: type,
      reactionCounts: reactionCounts,
      reactionScores: reactionScores,
      latestReactions: latestReactions,
      ownReactions: ownReactions,
      parentId: parentId,
      quotedMessage: quotedMessage,
      quotedMessageId: quotedMessageId,
      replyCount: replyCount,
      threadParticipants: threadParticipants,
      showInChannel: showInChannel,
      shadowed: shadowed,
      command: command,
      pinnedAt: pinnedAt,
      pinExpires: pinExpires,
      pinnedBy: pinnedBy,
    );
  }

  Message fromJson(Map<String, Object?> json) {
    return Message.fromJson(json);
  }
}

/// @nodoc
const $Message = _$MessageTearOff();

/// @nodoc
mixin _$Message {
  String get id => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  MessageStatus get status => throw _privateConstructorUsedError;
  String get from => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  bool get silent => throw _privateConstructorUsedError;
  bool get pinned => throw _privateConstructorUsedError;
  int get likes => throw _privateConstructorUsedError;
  int get views => throw _privateConstructorUsedError;
  List<String> get tags => throw _privateConstructorUsedError;
  List<String> get content => throw _privateConstructorUsedError;
  List<Attachment> get attachments => throw _privateConstructorUsedError;
  List<User> get mentionedUsers => throw _privateConstructorUsedError;
  Map<String, Object?> get extraData => throw _privateConstructorUsedError;
  String? get replyTo => throw _privateConstructorUsedError;
  String? get to => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  Map<String, int>? get reactionCounts => throw _privateConstructorUsedError;
  Map<String, int>? get reactionScores => throw _privateConstructorUsedError;
  List<Reaction>? get latestReactions => throw _privateConstructorUsedError;
  List<Reaction>? get ownReactions => throw _privateConstructorUsedError;
  String? get parentId => throw _privateConstructorUsedError;
  Message? get quotedMessage => throw _privateConstructorUsedError;
  String? get quotedMessageId => throw _privateConstructorUsedError;
  int? get replyCount => throw _privateConstructorUsedError;
  List<User>? get threadParticipants => throw _privateConstructorUsedError;
  bool? get showInChannel => throw _privateConstructorUsedError;
  bool? get shadowed => throw _privateConstructorUsedError;
  String? get command => throw _privateConstructorUsedError;
  DateTime? get pinnedAt => throw _privateConstructorUsedError;
  DateTime? get pinExpires => throw _privateConstructorUsedError;
  User? get pinnedBy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageCopyWith<Message> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) then) =
      _$MessageCopyWithImpl<$Res>;
  $Res call(
      {String id,
      DateTime createdAt,
      DateTime updatedAt,
      String text,
      MessageStatus status,
      String from,
      User? user,
      bool silent,
      bool pinned,
      int likes,
      int views,
      List<String> tags,
      List<String> content,
      List<Attachment> attachments,
      List<User> mentionedUsers,
      Map<String, Object?> extraData,
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
      User? pinnedBy});

  $UserCopyWith<$Res>? get user;
  $MessageCopyWith<$Res>? get quotedMessage;
  $UserCopyWith<$Res>? get pinnedBy;
}

/// @nodoc
class _$MessageCopyWithImpl<$Res> implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  final Message _value;
  // ignore: unused_field
  final $Res Function(Message) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? text = freezed,
    Object? status = freezed,
    Object? from = freezed,
    Object? user = freezed,
    Object? silent = freezed,
    Object? pinned = freezed,
    Object? likes = freezed,
    Object? views = freezed,
    Object? tags = freezed,
    Object? content = freezed,
    Object? attachments = freezed,
    Object? mentionedUsers = freezed,
    Object? extraData = freezed,
    Object? replyTo = freezed,
    Object? to = freezed,
    Object? type = freezed,
    Object? reactionCounts = freezed,
    Object? reactionScores = freezed,
    Object? latestReactions = freezed,
    Object? ownReactions = freezed,
    Object? parentId = freezed,
    Object? quotedMessage = freezed,
    Object? quotedMessageId = freezed,
    Object? replyCount = freezed,
    Object? threadParticipants = freezed,
    Object? showInChannel = freezed,
    Object? shadowed = freezed,
    Object? command = freezed,
    Object? pinnedAt = freezed,
    Object? pinExpires = freezed,
    Object? pinnedBy = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MessageStatus,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      silent: silent == freezed
          ? _value.silent
          : silent // ignore: cast_nullable_to_non_nullable
              as bool,
      pinned: pinned == freezed
          ? _value.pinned
          : pinned // ignore: cast_nullable_to_non_nullable
              as bool,
      likes: likes == freezed
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      views: views == freezed
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as List<String>,
      attachments: attachments == freezed
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<Attachment>,
      mentionedUsers: mentionedUsers == freezed
          ? _value.mentionedUsers
          : mentionedUsers // ignore: cast_nullable_to_non_nullable
              as List<User>,
      extraData: extraData == freezed
          ? _value.extraData
          : extraData // ignore: cast_nullable_to_non_nullable
              as Map<String, Object?>,
      replyTo: replyTo == freezed
          ? _value.replyTo
          : replyTo // ignore: cast_nullable_to_non_nullable
              as String?,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      reactionCounts: reactionCounts == freezed
          ? _value.reactionCounts
          : reactionCounts // ignore: cast_nullable_to_non_nullable
              as Map<String, int>?,
      reactionScores: reactionScores == freezed
          ? _value.reactionScores
          : reactionScores // ignore: cast_nullable_to_non_nullable
              as Map<String, int>?,
      latestReactions: latestReactions == freezed
          ? _value.latestReactions
          : latestReactions // ignore: cast_nullable_to_non_nullable
              as List<Reaction>?,
      ownReactions: ownReactions == freezed
          ? _value.ownReactions
          : ownReactions // ignore: cast_nullable_to_non_nullable
              as List<Reaction>?,
      parentId: parentId == freezed
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
      quotedMessage: quotedMessage == freezed
          ? _value.quotedMessage
          : quotedMessage // ignore: cast_nullable_to_non_nullable
              as Message?,
      quotedMessageId: quotedMessageId == freezed
          ? _value.quotedMessageId
          : quotedMessageId // ignore: cast_nullable_to_non_nullable
              as String?,
      replyCount: replyCount == freezed
          ? _value.replyCount
          : replyCount // ignore: cast_nullable_to_non_nullable
              as int?,
      threadParticipants: threadParticipants == freezed
          ? _value.threadParticipants
          : threadParticipants // ignore: cast_nullable_to_non_nullable
              as List<User>?,
      showInChannel: showInChannel == freezed
          ? _value.showInChannel
          : showInChannel // ignore: cast_nullable_to_non_nullable
              as bool?,
      shadowed: shadowed == freezed
          ? _value.shadowed
          : shadowed // ignore: cast_nullable_to_non_nullable
              as bool?,
      command: command == freezed
          ? _value.command
          : command // ignore: cast_nullable_to_non_nullable
              as String?,
      pinnedAt: pinnedAt == freezed
          ? _value.pinnedAt
          : pinnedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      pinExpires: pinExpires == freezed
          ? _value.pinExpires
          : pinExpires // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      pinnedBy: pinnedBy == freezed
          ? _value.pinnedBy
          : pinnedBy // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }

  @override
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }

  @override
  $MessageCopyWith<$Res>? get quotedMessage {
    if (_value.quotedMessage == null) {
      return null;
    }

    return $MessageCopyWith<$Res>(_value.quotedMessage!, (value) {
      return _then(_value.copyWith(quotedMessage: value));
    });
  }

  @override
  $UserCopyWith<$Res>? get pinnedBy {
    if (_value.pinnedBy == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.pinnedBy!, (value) {
      return _then(_value.copyWith(pinnedBy: value));
    });
  }
}

/// @nodoc
abstract class _$MessageCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$MessageCopyWith(_Message value, $Res Function(_Message) then) =
      __$MessageCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      DateTime createdAt,
      DateTime updatedAt,
      String text,
      MessageStatus status,
      String from,
      User? user,
      bool silent,
      bool pinned,
      int likes,
      int views,
      List<String> tags,
      List<String> content,
      List<Attachment> attachments,
      List<User> mentionedUsers,
      Map<String, Object?> extraData,
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
      User? pinnedBy});

  @override
  $UserCopyWith<$Res>? get user;
  @override
  $MessageCopyWith<$Res>? get quotedMessage;
  @override
  $UserCopyWith<$Res>? get pinnedBy;
}

/// @nodoc
class __$MessageCopyWithImpl<$Res> extends _$MessageCopyWithImpl<$Res>
    implements _$MessageCopyWith<$Res> {
  __$MessageCopyWithImpl(_Message _value, $Res Function(_Message) _then)
      : super(_value, (v) => _then(v as _Message));

  @override
  _Message get _value => super._value as _Message;

  @override
  $Res call({
    Object? id = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? text = freezed,
    Object? status = freezed,
    Object? from = freezed,
    Object? user = freezed,
    Object? silent = freezed,
    Object? pinned = freezed,
    Object? likes = freezed,
    Object? views = freezed,
    Object? tags = freezed,
    Object? content = freezed,
    Object? attachments = freezed,
    Object? mentionedUsers = freezed,
    Object? extraData = freezed,
    Object? replyTo = freezed,
    Object? to = freezed,
    Object? type = freezed,
    Object? reactionCounts = freezed,
    Object? reactionScores = freezed,
    Object? latestReactions = freezed,
    Object? ownReactions = freezed,
    Object? parentId = freezed,
    Object? quotedMessage = freezed,
    Object? quotedMessageId = freezed,
    Object? replyCount = freezed,
    Object? threadParticipants = freezed,
    Object? showInChannel = freezed,
    Object? shadowed = freezed,
    Object? command = freezed,
    Object? pinnedAt = freezed,
    Object? pinExpires = freezed,
    Object? pinnedBy = freezed,
  }) {
    return _then(_Message(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MessageStatus,
      from: from == freezed
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      silent: silent == freezed
          ? _value.silent
          : silent // ignore: cast_nullable_to_non_nullable
              as bool,
      pinned: pinned == freezed
          ? _value.pinned
          : pinned // ignore: cast_nullable_to_non_nullable
              as bool,
      likes: likes == freezed
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
      views: views == freezed
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int,
      tags: tags == freezed
          ? _value.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      content: content == freezed
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as List<String>,
      attachments: attachments == freezed
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as List<Attachment>,
      mentionedUsers: mentionedUsers == freezed
          ? _value.mentionedUsers
          : mentionedUsers // ignore: cast_nullable_to_non_nullable
              as List<User>,
      extraData: extraData == freezed
          ? _value.extraData
          : extraData // ignore: cast_nullable_to_non_nullable
              as Map<String, Object?>,
      replyTo: replyTo == freezed
          ? _value.replyTo
          : replyTo // ignore: cast_nullable_to_non_nullable
              as String?,
      to: to == freezed
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String?,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      reactionCounts: reactionCounts == freezed
          ? _value.reactionCounts
          : reactionCounts // ignore: cast_nullable_to_non_nullable
              as Map<String, int>?,
      reactionScores: reactionScores == freezed
          ? _value.reactionScores
          : reactionScores // ignore: cast_nullable_to_non_nullable
              as Map<String, int>?,
      latestReactions: latestReactions == freezed
          ? _value.latestReactions
          : latestReactions // ignore: cast_nullable_to_non_nullable
              as List<Reaction>?,
      ownReactions: ownReactions == freezed
          ? _value.ownReactions
          : ownReactions // ignore: cast_nullable_to_non_nullable
              as List<Reaction>?,
      parentId: parentId == freezed
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as String?,
      quotedMessage: quotedMessage == freezed
          ? _value.quotedMessage
          : quotedMessage // ignore: cast_nullable_to_non_nullable
              as Message?,
      quotedMessageId: quotedMessageId == freezed
          ? _value.quotedMessageId
          : quotedMessageId // ignore: cast_nullable_to_non_nullable
              as String?,
      replyCount: replyCount == freezed
          ? _value.replyCount
          : replyCount // ignore: cast_nullable_to_non_nullable
              as int?,
      threadParticipants: threadParticipants == freezed
          ? _value.threadParticipants
          : threadParticipants // ignore: cast_nullable_to_non_nullable
              as List<User>?,
      showInChannel: showInChannel == freezed
          ? _value.showInChannel
          : showInChannel // ignore: cast_nullable_to_non_nullable
              as bool?,
      shadowed: shadowed == freezed
          ? _value.shadowed
          : shadowed // ignore: cast_nullable_to_non_nullable
              as bool?,
      command: command == freezed
          ? _value.command
          : command // ignore: cast_nullable_to_non_nullable
              as String?,
      pinnedAt: pinnedAt == freezed
          ? _value.pinnedAt
          : pinnedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      pinExpires: pinExpires == freezed
          ? _value.pinExpires
          : pinExpires // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      pinnedBy: pinnedBy == freezed
          ? _value.pinnedBy
          : pinnedBy // ignore: cast_nullable_to_non_nullable
              as User?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Message implements _Message {
  const _$_Message(
      {required this.id,
      required this.createdAt,
      required this.updatedAt,
      required this.text,
      required this.status,
      required this.from,
      this.user,
      this.silent = false,
      this.pinned = false,
      this.likes = 0,
      this.views = 0,
      this.tags = const [],
      this.content = const [],
      this.attachments = const [],
      this.mentionedUsers = const [],
      this.extraData = const {},
      this.replyTo,
      this.to,
      this.type,
      this.reactionCounts,
      this.reactionScores,
      this.latestReactions,
      this.ownReactions,
      this.parentId,
      this.quotedMessage,
      this.quotedMessageId,
      this.replyCount,
      this.threadParticipants,
      this.showInChannel,
      this.shadowed,
      this.command,
      this.pinnedAt,
      this.pinExpires,
      this.pinnedBy});

  factory _$_Message.fromJson(Map<String, dynamic> json) =>
      _$$_MessageFromJson(json);

  @override
  final String id;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final String text;
  @override
  final MessageStatus status;
  @override
  final String from;
  @override
  final User? user;
  @JsonKey(defaultValue: false)
  @override
  final bool silent;
  @JsonKey(defaultValue: false)
  @override
  final bool pinned;
  @JsonKey(defaultValue: 0)
  @override
  final int likes;
  @JsonKey(defaultValue: 0)
  @override
  final int views;
  @JsonKey(defaultValue: const [])
  @override
  final List<String> tags;
  @JsonKey(defaultValue: const [])
  @override
  final List<String> content;
  @JsonKey(defaultValue: const [])
  @override
  final List<Attachment> attachments;
  @JsonKey(defaultValue: const [])
  @override
  final List<User> mentionedUsers;
  @JsonKey(defaultValue: const {})
  @override
  final Map<String, Object?> extraData;
  @override
  final String? replyTo;
  @override
  final String? to;
  @override
  final String? type;
  @override
  final Map<String, int>? reactionCounts;
  @override
  final Map<String, int>? reactionScores;
  @override
  final List<Reaction>? latestReactions;
  @override
  final List<Reaction>? ownReactions;
  @override
  final String? parentId;
  @override
  final Message? quotedMessage;
  @override
  final String? quotedMessageId;
  @override
  final int? replyCount;
  @override
  final List<User>? threadParticipants;
  @override
  final bool? showInChannel;
  @override
  final bool? shadowed;
  @override
  final String? command;
  @override
  final DateTime? pinnedAt;
  @override
  final DateTime? pinExpires;
  @override
  final User? pinnedBy;

  @override
  String toString() {
    return 'Message(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, text: $text, status: $status, from: $from, user: $user, silent: $silent, pinned: $pinned, likes: $likes, views: $views, tags: $tags, content: $content, attachments: $attachments, mentionedUsers: $mentionedUsers, extraData: $extraData, replyTo: $replyTo, to: $to, type: $type, reactionCounts: $reactionCounts, reactionScores: $reactionScores, latestReactions: $latestReactions, ownReactions: $ownReactions, parentId: $parentId, quotedMessage: $quotedMessage, quotedMessageId: $quotedMessageId, replyCount: $replyCount, threadParticipants: $threadParticipants, showInChannel: $showInChannel, shadowed: $shadowed, command: $command, pinnedAt: $pinnedAt, pinExpires: $pinExpires, pinnedBy: $pinnedBy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Message &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.silent, silent) || other.silent == silent) &&
            (identical(other.pinned, pinned) || other.pinned == pinned) &&
            (identical(other.likes, likes) || other.likes == likes) &&
            (identical(other.views, views) || other.views == views) &&
            const DeepCollectionEquality().equals(other.tags, tags) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality()
                .equals(other.attachments, attachments) &&
            const DeepCollectionEquality()
                .equals(other.mentionedUsers, mentionedUsers) &&
            const DeepCollectionEquality().equals(other.extraData, extraData) &&
            (identical(other.replyTo, replyTo) || other.replyTo == replyTo) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other.reactionCounts, reactionCounts) &&
            const DeepCollectionEquality()
                .equals(other.reactionScores, reactionScores) &&
            const DeepCollectionEquality()
                .equals(other.latestReactions, latestReactions) &&
            const DeepCollectionEquality()
                .equals(other.ownReactions, ownReactions) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.quotedMessage, quotedMessage) ||
                other.quotedMessage == quotedMessage) &&
            (identical(other.quotedMessageId, quotedMessageId) ||
                other.quotedMessageId == quotedMessageId) &&
            (identical(other.replyCount, replyCount) ||
                other.replyCount == replyCount) &&
            const DeepCollectionEquality()
                .equals(other.threadParticipants, threadParticipants) &&
            (identical(other.showInChannel, showInChannel) ||
                other.showInChannel == showInChannel) &&
            (identical(other.shadowed, shadowed) ||
                other.shadowed == shadowed) &&
            (identical(other.command, command) || other.command == command) &&
            (identical(other.pinnedAt, pinnedAt) ||
                other.pinnedAt == pinnedAt) &&
            (identical(other.pinExpires, pinExpires) ||
                other.pinExpires == pinExpires) &&
            (identical(other.pinnedBy, pinnedBy) ||
                other.pinnedBy == pinnedBy));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        createdAt,
        updatedAt,
        text,
        status,
        from,
        user,
        silent,
        pinned,
        likes,
        views,
        const DeepCollectionEquality().hash(tags),
        const DeepCollectionEquality().hash(content),
        const DeepCollectionEquality().hash(attachments),
        const DeepCollectionEquality().hash(mentionedUsers),
        const DeepCollectionEquality().hash(extraData),
        replyTo,
        to,
        type,
        const DeepCollectionEquality().hash(reactionCounts),
        const DeepCollectionEquality().hash(reactionScores),
        const DeepCollectionEquality().hash(latestReactions),
        const DeepCollectionEquality().hash(ownReactions),
        parentId,
        quotedMessage,
        quotedMessageId,
        replyCount,
        const DeepCollectionEquality().hash(threadParticipants),
        showInChannel,
        shadowed,
        command,
        pinnedAt,
        pinExpires,
        pinnedBy
      ]);

  @JsonKey(ignore: true)
  @override
  _$MessageCopyWith<_Message> get copyWith =>
      __$MessageCopyWithImpl<_Message>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageToJson(this);
  }
}

abstract class _Message implements Message {
  const factory _Message(
      {required String id,
      required DateTime createdAt,
      required DateTime updatedAt,
      required String text,
      required MessageStatus status,
      required String from,
      User? user,
      bool silent,
      bool pinned,
      int likes,
      int views,
      List<String> tags,
      List<String> content,
      List<Attachment> attachments,
      List<User> mentionedUsers,
      Map<String, Object?> extraData,
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
      User? pinnedBy}) = _$_Message;

  factory _Message.fromJson(Map<String, dynamic> json) = _$_Message.fromJson;

  @override
  String get id;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  String get text;
  @override
  MessageStatus get status;
  @override
  String get from;
  @override
  User? get user;
  @override
  bool get silent;
  @override
  bool get pinned;
  @override
  int get likes;
  @override
  int get views;
  @override
  List<String> get tags;
  @override
  List<String> get content;
  @override
  List<Attachment> get attachments;
  @override
  List<User> get mentionedUsers;
  @override
  Map<String, Object?> get extraData;
  @override
  String? get replyTo;
  @override
  String? get to;
  @override
  String? get type;
  @override
  Map<String, int>? get reactionCounts;
  @override
  Map<String, int>? get reactionScores;
  @override
  List<Reaction>? get latestReactions;
  @override
  List<Reaction>? get ownReactions;
  @override
  String? get parentId;
  @override
  Message? get quotedMessage;
  @override
  String? get quotedMessageId;
  @override
  int? get replyCount;
  @override
  List<User>? get threadParticipants;
  @override
  bool? get showInChannel;
  @override
  bool? get shadowed;
  @override
  String? get command;
  @override
  DateTime? get pinnedAt;
  @override
  DateTime? get pinExpires;
  @override
  User? get pinnedBy;
  @override
  @JsonKey(ignore: true)
  _$MessageCopyWith<_Message> get copyWith =>
      throw _privateConstructorUsedError;
}

Reaction _$ReactionFromJson(Map<String, dynamic> json) {
  return _Reaction.fromJson(json);
}

/// @nodoc
class _$ReactionTearOff {
  const _$ReactionTearOff();

  _Reaction call(
      {required String type,
      String? messageId,
      DateTime? createdAt,
      User? user,
      String? userId,
      int score = 0,
      Map<String, Object?> extraData = const {}}) {
    return _Reaction(
      type: type,
      messageId: messageId,
      createdAt: createdAt,
      user: user,
      userId: userId,
      score: score,
      extraData: extraData,
    );
  }

  Reaction fromJson(Map<String, Object?> json) {
    return Reaction.fromJson(json);
  }
}

/// @nodoc
const $Reaction = _$ReactionTearOff();

/// @nodoc
mixin _$Reaction {
  String get type => throw _privateConstructorUsedError;
  String? get messageId => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  int get score => throw _privateConstructorUsedError;
  Map<String, Object?> get extraData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReactionCopyWith<Reaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReactionCopyWith<$Res> {
  factory $ReactionCopyWith(Reaction value, $Res Function(Reaction) then) =
      _$ReactionCopyWithImpl<$Res>;
  $Res call(
      {String type,
      String? messageId,
      DateTime? createdAt,
      User? user,
      String? userId,
      int score,
      Map<String, Object?> extraData});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$ReactionCopyWithImpl<$Res> implements $ReactionCopyWith<$Res> {
  _$ReactionCopyWithImpl(this._value, this._then);

  final Reaction _value;
  // ignore: unused_field
  final $Res Function(Reaction) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? messageId = freezed,
    Object? createdAt = freezed,
    Object? user = freezed,
    Object? userId = freezed,
    Object? score = freezed,
    Object? extraData = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      messageId: messageId == freezed
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      score: score == freezed
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      extraData: extraData == freezed
          ? _value.extraData
          : extraData // ignore: cast_nullable_to_non_nullable
              as Map<String, Object?>,
    ));
  }

  @override
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$ReactionCopyWith<$Res> implements $ReactionCopyWith<$Res> {
  factory _$ReactionCopyWith(_Reaction value, $Res Function(_Reaction) then) =
      __$ReactionCopyWithImpl<$Res>;
  @override
  $Res call(
      {String type,
      String? messageId,
      DateTime? createdAt,
      User? user,
      String? userId,
      int score,
      Map<String, Object?> extraData});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$ReactionCopyWithImpl<$Res> extends _$ReactionCopyWithImpl<$Res>
    implements _$ReactionCopyWith<$Res> {
  __$ReactionCopyWithImpl(_Reaction _value, $Res Function(_Reaction) _then)
      : super(_value, (v) => _then(v as _Reaction));

  @override
  _Reaction get _value => super._value as _Reaction;

  @override
  $Res call({
    Object? type = freezed,
    Object? messageId = freezed,
    Object? createdAt = freezed,
    Object? user = freezed,
    Object? userId = freezed,
    Object? score = freezed,
    Object? extraData = freezed,
  }) {
    return _then(_Reaction(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      messageId: messageId == freezed
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      score: score == freezed
          ? _value.score
          : score // ignore: cast_nullable_to_non_nullable
              as int,
      extraData: extraData == freezed
          ? _value.extraData
          : extraData // ignore: cast_nullable_to_non_nullable
              as Map<String, Object?>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Reaction implements _Reaction {
  const _$_Reaction(
      {required this.type,
      this.messageId,
      this.createdAt,
      this.user,
      this.userId,
      this.score = 0,
      this.extraData = const {}});

  factory _$_Reaction.fromJson(Map<String, dynamic> json) =>
      _$$_ReactionFromJson(json);

  @override
  final String type;
  @override
  final String? messageId;
  @override
  final DateTime? createdAt;
  @override
  final User? user;
  @override
  final String? userId;
  @JsonKey(defaultValue: 0)
  @override
  final int score;
  @JsonKey(defaultValue: const {})
  @override
  final Map<String, Object?> extraData;

  @override
  String toString() {
    return 'Reaction(type: $type, messageId: $messageId, createdAt: $createdAt, user: $user, userId: $userId, score: $score, extraData: $extraData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Reaction &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.score, score) || other.score == score) &&
            const DeepCollectionEquality().equals(other.extraData, extraData));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type, messageId, createdAt, user,
      userId, score, const DeepCollectionEquality().hash(extraData));

  @JsonKey(ignore: true)
  @override
  _$ReactionCopyWith<_Reaction> get copyWith =>
      __$ReactionCopyWithImpl<_Reaction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReactionToJson(this);
  }
}

abstract class _Reaction implements Reaction {
  const factory _Reaction(
      {required String type,
      String? messageId,
      DateTime? createdAt,
      User? user,
      String? userId,
      int score,
      Map<String, Object?> extraData}) = _$_Reaction;

  factory _Reaction.fromJson(Map<String, dynamic> json) = _$_Reaction.fromJson;

  @override
  String get type;
  @override
  String? get messageId;
  @override
  DateTime? get createdAt;
  @override
  User? get user;
  @override
  String? get userId;
  @override
  int get score;
  @override
  Map<String, Object?> get extraData;
  @override
  @JsonKey(ignore: true)
  _$ReactionCopyWith<_Reaction> get copyWith =>
      throw _privateConstructorUsedError;
}
