// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'default':
      return _User.fromJson(json);
    case 'ownUser':
      return OwnUser.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'type', 'User', 'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
class _$UserTearOff {
  const _$UserTearOff();

  _User call(
      {required String uid,
      String? displayName,
      bool? isActive,
      String? email,
      String? role,
      String? photoUrl,
      String? username,
      DateTime? lastActive,
      DateTime? createdAt,
      DateTime? updatedAt}) {
    return _User(
      uid: uid,
      displayName: displayName,
      isActive: isActive,
      email: email,
      role: role,
      photoUrl: photoUrl,
      username: username,
      lastActive: lastActive,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  OwnUser ownUser(
      {required String uid,
      required List<Mute> mutes,
      required List<Mute> channelMutes,
      required int totalUnreadCount,
      required int unreadChannels,
      String? displayName,
      bool? isActive,
      String? email,
      String? photoUrl,
      String? username,
      String? role,
      DateTime? createdAt,
      DateTime? lastActive,
      DateTime? updatedAt,
      bool online = false,
      Map<String, Object?> extraData = const {},
      bool banned = false,
      List<String> teams = const [],
      String? language}) {
    return OwnUser(
      uid: uid,
      mutes: mutes,
      channelMutes: channelMutes,
      totalUnreadCount: totalUnreadCount,
      unreadChannels: unreadChannels,
      displayName: displayName,
      isActive: isActive,
      email: email,
      photoUrl: photoUrl,
      username: username,
      role: role,
      createdAt: createdAt,
      lastActive: lastActive,
      updatedAt: updatedAt,
      online: online,
      extraData: extraData,
      banned: banned,
      teams: teams,
      language: language,
    );
  }

  User fromJson(Map<String, Object?> json) {
    return User.fromJson(json);
  }
}

/// @nodoc
const $User = _$UserTearOff();

/// @nodoc
mixin _$User {
  String get uid => throw _privateConstructorUsedError;
  String? get displayName => throw _privateConstructorUsedError;
  bool? get isActive => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  String? get photoUrl => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  DateTime? get lastActive => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String uid,
            String? displayName,
            bool? isActive,
            String? email,
            String? role,
            String? photoUrl,
            String? username,
            DateTime? lastActive,
            DateTime? createdAt,
            DateTime? updatedAt)
        $default, {
    required TResult Function(
            String uid,
            List<Mute> mutes,
            List<Mute> channelMutes,
            int totalUnreadCount,
            int unreadChannels,
            String? displayName,
            bool? isActive,
            String? email,
            String? photoUrl,
            String? username,
            String? role,
            DateTime? createdAt,
            DateTime? lastActive,
            DateTime? updatedAt,
            bool online,
            Map<String, Object?> extraData,
            bool banned,
            List<String> teams,
            String? language)
        ownUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(
            String uid,
            String? displayName,
            bool? isActive,
            String? email,
            String? role,
            String? photoUrl,
            String? username,
            DateTime? lastActive,
            DateTime? createdAt,
            DateTime? updatedAt)?
        $default, {
    TResult Function(
            String uid,
            List<Mute> mutes,
            List<Mute> channelMutes,
            int totalUnreadCount,
            int unreadChannels,
            String? displayName,
            bool? isActive,
            String? email,
            String? photoUrl,
            String? username,
            String? role,
            DateTime? createdAt,
            DateTime? lastActive,
            DateTime? updatedAt,
            bool online,
            Map<String, Object?> extraData,
            bool banned,
            List<String> teams,
            String? language)?
        ownUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String uid,
            String? displayName,
            bool? isActive,
            String? email,
            String? role,
            String? photoUrl,
            String? username,
            DateTime? lastActive,
            DateTime? createdAt,
            DateTime? updatedAt)?
        $default, {
    TResult Function(
            String uid,
            List<Mute> mutes,
            List<Mute> channelMutes,
            int totalUnreadCount,
            int unreadChannels,
            String? displayName,
            bool? isActive,
            String? email,
            String? photoUrl,
            String? username,
            String? role,
            DateTime? createdAt,
            DateTime? lastActive,
            DateTime? updatedAt,
            bool online,
            Map<String, Object?> extraData,
            bool banned,
            List<String> teams,
            String? language)?
        ownUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_User value) $default, {
    required TResult Function(OwnUser value) ownUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_User value)? $default, {
    TResult Function(OwnUser value)? ownUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_User value)? $default, {
    TResult Function(OwnUser value)? ownUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {String uid,
      String? displayName,
      bool? isActive,
      String? email,
      String? role,
      String? photoUrl,
      String? username,
      DateTime? lastActive,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? uid = freezed,
    Object? displayName = freezed,
    Object? isActive = freezed,
    Object? email = freezed,
    Object? role = freezed,
    Object? photoUrl = freezed,
    Object? username = freezed,
    Object? lastActive = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      lastActive: lastActive == freezed
          ? _value.lastActive
          : lastActive // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) then) =
      __$UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uid,
      String? displayName,
      bool? isActive,
      String? email,
      String? role,
      String? photoUrl,
      String? username,
      DateTime? lastActive,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(_User _value, $Res Function(_User) _then)
      : super(_value, (v) => _then(v as _User));

  @override
  _User get _value => super._value as _User;

  @override
  $Res call({
    Object? uid = freezed,
    Object? displayName = freezed,
    Object? isActive = freezed,
    Object? email = freezed,
    Object? role = freezed,
    Object? photoUrl = freezed,
    Object? username = freezed,
    Object? lastActive = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_User(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      lastActive: lastActive == freezed
          ? _value.lastActive
          : lastActive // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User implements _User {
  const _$_User(
      {required this.uid,
      this.displayName,
      this.isActive,
      this.email,
      this.role,
      this.photoUrl,
      this.username,
      this.lastActive,
      this.createdAt,
      this.updatedAt,
      String? $type})
      : $type = $type ?? 'default';

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final String uid;
  @override
  final String? displayName;
  @override
  final bool? isActive;
  @override
  final String? email;
  @override
  final String? role;
  @override
  final String? photoUrl;
  @override
  final String? username;
  @override
  final DateTime? lastActive;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'User(uid: $uid, displayName: $displayName, isActive: $isActive, email: $email, role: $role, photoUrl: $photoUrl, username: $username, lastActive: $lastActive, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _User &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.lastActive, lastActive) ||
                other.lastActive == lastActive) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uid, displayName, isActive,
      email, role, photoUrl, username, lastActive, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  _$UserCopyWith<_User> get copyWith =>
      __$UserCopyWithImpl<_User>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String uid,
            String? displayName,
            bool? isActive,
            String? email,
            String? role,
            String? photoUrl,
            String? username,
            DateTime? lastActive,
            DateTime? createdAt,
            DateTime? updatedAt)
        $default, {
    required TResult Function(
            String uid,
            List<Mute> mutes,
            List<Mute> channelMutes,
            int totalUnreadCount,
            int unreadChannels,
            String? displayName,
            bool? isActive,
            String? email,
            String? photoUrl,
            String? username,
            String? role,
            DateTime? createdAt,
            DateTime? lastActive,
            DateTime? updatedAt,
            bool online,
            Map<String, Object?> extraData,
            bool banned,
            List<String> teams,
            String? language)
        ownUser,
  }) {
    return $default(uid, displayName, isActive, email, role, photoUrl, username,
        lastActive, createdAt, updatedAt);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(
            String uid,
            String? displayName,
            bool? isActive,
            String? email,
            String? role,
            String? photoUrl,
            String? username,
            DateTime? lastActive,
            DateTime? createdAt,
            DateTime? updatedAt)?
        $default, {
    TResult Function(
            String uid,
            List<Mute> mutes,
            List<Mute> channelMutes,
            int totalUnreadCount,
            int unreadChannels,
            String? displayName,
            bool? isActive,
            String? email,
            String? photoUrl,
            String? username,
            String? role,
            DateTime? createdAt,
            DateTime? lastActive,
            DateTime? updatedAt,
            bool online,
            Map<String, Object?> extraData,
            bool banned,
            List<String> teams,
            String? language)?
        ownUser,
  }) {
    return $default?.call(uid, displayName, isActive, email, role, photoUrl,
        username, lastActive, createdAt, updatedAt);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String uid,
            String? displayName,
            bool? isActive,
            String? email,
            String? role,
            String? photoUrl,
            String? username,
            DateTime? lastActive,
            DateTime? createdAt,
            DateTime? updatedAt)?
        $default, {
    TResult Function(
            String uid,
            List<Mute> mutes,
            List<Mute> channelMutes,
            int totalUnreadCount,
            int unreadChannels,
            String? displayName,
            bool? isActive,
            String? email,
            String? photoUrl,
            String? username,
            String? role,
            DateTime? createdAt,
            DateTime? lastActive,
            DateTime? updatedAt,
            bool online,
            Map<String, Object?> extraData,
            bool banned,
            List<String> teams,
            String? language)?
        ownUser,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(uid, displayName, isActive, email, role, photoUrl,
          username, lastActive, createdAt, updatedAt);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_User value) $default, {
    required TResult Function(OwnUser value) ownUser,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_User value)? $default, {
    TResult Function(OwnUser value)? ownUser,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_User value)? $default, {
    TResult Function(OwnUser value)? ownUser,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(this);
  }
}

abstract class _User implements User {
  const factory _User(
      {required String uid,
      String? displayName,
      bool? isActive,
      String? email,
      String? role,
      String? photoUrl,
      String? username,
      DateTime? lastActive,
      DateTime? createdAt,
      DateTime? updatedAt}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String get uid;
  @override
  String? get displayName;
  @override
  bool? get isActive;
  @override
  String? get email;
  @override
  String? get role;
  @override
  String? get photoUrl;
  @override
  String? get username;
  @override
  DateTime? get lastActive;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$UserCopyWith<_User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OwnUserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory $OwnUserCopyWith(OwnUser value, $Res Function(OwnUser) then) =
      _$OwnUserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String uid,
      List<Mute> mutes,
      List<Mute> channelMutes,
      int totalUnreadCount,
      int unreadChannels,
      String? displayName,
      bool? isActive,
      String? email,
      String? photoUrl,
      String? username,
      String? role,
      DateTime? createdAt,
      DateTime? lastActive,
      DateTime? updatedAt,
      bool online,
      Map<String, Object?> extraData,
      bool banned,
      List<String> teams,
      String? language});
}

/// @nodoc
class _$OwnUserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements $OwnUserCopyWith<$Res> {
  _$OwnUserCopyWithImpl(OwnUser _value, $Res Function(OwnUser) _then)
      : super(_value, (v) => _then(v as OwnUser));

  @override
  OwnUser get _value => super._value as OwnUser;

  @override
  $Res call({
    Object? uid = freezed,
    Object? mutes = freezed,
    Object? channelMutes = freezed,
    Object? totalUnreadCount = freezed,
    Object? unreadChannels = freezed,
    Object? displayName = freezed,
    Object? isActive = freezed,
    Object? email = freezed,
    Object? photoUrl = freezed,
    Object? username = freezed,
    Object? role = freezed,
    Object? createdAt = freezed,
    Object? lastActive = freezed,
    Object? updatedAt = freezed,
    Object? online = freezed,
    Object? extraData = freezed,
    Object? banned = freezed,
    Object? teams = freezed,
    Object? language = freezed,
  }) {
    return _then(OwnUser(
      uid: uid == freezed
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      mutes: mutes == freezed
          ? _value.mutes
          : mutes // ignore: cast_nullable_to_non_nullable
              as List<Mute>,
      channelMutes: channelMutes == freezed
          ? _value.channelMutes
          : channelMutes // ignore: cast_nullable_to_non_nullable
              as List<Mute>,
      totalUnreadCount: totalUnreadCount == freezed
          ? _value.totalUnreadCount
          : totalUnreadCount // ignore: cast_nullable_to_non_nullable
              as int,
      unreadChannels: unreadChannels == freezed
          ? _value.unreadChannels
          : unreadChannels // ignore: cast_nullable_to_non_nullable
              as int,
      displayName: displayName == freezed
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      photoUrl: photoUrl == freezed
          ? _value.photoUrl
          : photoUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      lastActive: lastActive == freezed
          ? _value.lastActive
          : lastActive // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      online: online == freezed
          ? _value.online
          : online // ignore: cast_nullable_to_non_nullable
              as bool,
      extraData: extraData == freezed
          ? _value.extraData
          : extraData // ignore: cast_nullable_to_non_nullable
              as Map<String, Object?>,
      banned: banned == freezed
          ? _value.banned
          : banned // ignore: cast_nullable_to_non_nullable
              as bool,
      teams: teams == freezed
          ? _value.teams
          : teams // ignore: cast_nullable_to_non_nullable
              as List<String>,
      language: language == freezed
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OwnUser implements OwnUser {
  const _$OwnUser(
      {required this.uid,
      required this.mutes,
      required this.channelMutes,
      required this.totalUnreadCount,
      required this.unreadChannels,
      this.displayName,
      this.isActive,
      this.email,
      this.photoUrl,
      this.username,
      this.role,
      this.createdAt,
      this.lastActive,
      this.updatedAt,
      this.online = false,
      this.extraData = const {},
      this.banned = false,
      this.teams = const [],
      this.language,
      String? $type})
      : $type = $type ?? 'ownUser';

  factory _$OwnUser.fromJson(Map<String, dynamic> json) =>
      _$$OwnUserFromJson(json);

  @override
  final String uid;
  @override // required List<Device> devices,
  final List<Mute> mutes;
  @override
  final List<Mute> channelMutes;
  @override
  final int totalUnreadCount;
  @override
  final int unreadChannels;
  @override
  final String? displayName;
  @override
  final bool? isActive;
  @override
  final String? email;
  @override
  final String? photoUrl;
  @override
  final String? username;
  @override
  final String? role;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? lastActive;
  @override
  final DateTime? updatedAt;
  @JsonKey(defaultValue: false)
  @override
  final bool online;
  @JsonKey(defaultValue: const {})
  @override
  final Map<String, Object?> extraData;
  @JsonKey(defaultValue: false)
  @override
  final bool banned;
  @JsonKey(defaultValue: const [])
  @override
  final List<String> teams;
  @override
  final String? language;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'User.ownUser(uid: $uid, mutes: $mutes, channelMutes: $channelMutes, totalUnreadCount: $totalUnreadCount, unreadChannels: $unreadChannels, displayName: $displayName, isActive: $isActive, email: $email, photoUrl: $photoUrl, username: $username, role: $role, createdAt: $createdAt, lastActive: $lastActive, updatedAt: $updatedAt, online: $online, extraData: $extraData, banned: $banned, teams: $teams, language: $language)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OwnUser &&
            (identical(other.uid, uid) || other.uid == uid) &&
            const DeepCollectionEquality().equals(other.mutes, mutes) &&
            const DeepCollectionEquality()
                .equals(other.channelMutes, channelMutes) &&
            (identical(other.totalUnreadCount, totalUnreadCount) ||
                other.totalUnreadCount == totalUnreadCount) &&
            (identical(other.unreadChannels, unreadChannels) ||
                other.unreadChannels == unreadChannels) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.photoUrl, photoUrl) ||
                other.photoUrl == photoUrl) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.lastActive, lastActive) ||
                other.lastActive == lastActive) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.online, online) || other.online == online) &&
            const DeepCollectionEquality().equals(other.extraData, extraData) &&
            (identical(other.banned, banned) || other.banned == banned) &&
            const DeepCollectionEquality().equals(other.teams, teams) &&
            (identical(other.language, language) ||
                other.language == language));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        uid,
        const DeepCollectionEquality().hash(mutes),
        const DeepCollectionEquality().hash(channelMutes),
        totalUnreadCount,
        unreadChannels,
        displayName,
        isActive,
        email,
        photoUrl,
        username,
        role,
        createdAt,
        lastActive,
        updatedAt,
        online,
        const DeepCollectionEquality().hash(extraData),
        banned,
        const DeepCollectionEquality().hash(teams),
        language
      ]);

  @JsonKey(ignore: true)
  @override
  $OwnUserCopyWith<OwnUser> get copyWith =>
      _$OwnUserCopyWithImpl<OwnUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String uid,
            String? displayName,
            bool? isActive,
            String? email,
            String? role,
            String? photoUrl,
            String? username,
            DateTime? lastActive,
            DateTime? createdAt,
            DateTime? updatedAt)
        $default, {
    required TResult Function(
            String uid,
            List<Mute> mutes,
            List<Mute> channelMutes,
            int totalUnreadCount,
            int unreadChannels,
            String? displayName,
            bool? isActive,
            String? email,
            String? photoUrl,
            String? username,
            String? role,
            DateTime? createdAt,
            DateTime? lastActive,
            DateTime? updatedAt,
            bool online,
            Map<String, Object?> extraData,
            bool banned,
            List<String> teams,
            String? language)
        ownUser,
  }) {
    return ownUser(
        uid,
        mutes,
        channelMutes,
        totalUnreadCount,
        unreadChannels,
        displayName,
        isActive,
        email,
        photoUrl,
        username,
        role,
        createdAt,
        lastActive,
        updatedAt,
        online,
        extraData,
        banned,
        teams,
        language);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(
            String uid,
            String? displayName,
            bool? isActive,
            String? email,
            String? role,
            String? photoUrl,
            String? username,
            DateTime? lastActive,
            DateTime? createdAt,
            DateTime? updatedAt)?
        $default, {
    TResult Function(
            String uid,
            List<Mute> mutes,
            List<Mute> channelMutes,
            int totalUnreadCount,
            int unreadChannels,
            String? displayName,
            bool? isActive,
            String? email,
            String? photoUrl,
            String? username,
            String? role,
            DateTime? createdAt,
            DateTime? lastActive,
            DateTime? updatedAt,
            bool online,
            Map<String, Object?> extraData,
            bool banned,
            List<String> teams,
            String? language)?
        ownUser,
  }) {
    return ownUser?.call(
        uid,
        mutes,
        channelMutes,
        totalUnreadCount,
        unreadChannels,
        displayName,
        isActive,
        email,
        photoUrl,
        username,
        role,
        createdAt,
        lastActive,
        updatedAt,
        online,
        extraData,
        banned,
        teams,
        language);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String uid,
            String? displayName,
            bool? isActive,
            String? email,
            String? role,
            String? photoUrl,
            String? username,
            DateTime? lastActive,
            DateTime? createdAt,
            DateTime? updatedAt)?
        $default, {
    TResult Function(
            String uid,
            List<Mute> mutes,
            List<Mute> channelMutes,
            int totalUnreadCount,
            int unreadChannels,
            String? displayName,
            bool? isActive,
            String? email,
            String? photoUrl,
            String? username,
            String? role,
            DateTime? createdAt,
            DateTime? lastActive,
            DateTime? updatedAt,
            bool online,
            Map<String, Object?> extraData,
            bool banned,
            List<String> teams,
            String? language)?
        ownUser,
    required TResult orElse(),
  }) {
    if (ownUser != null) {
      return ownUser(
          uid,
          mutes,
          channelMutes,
          totalUnreadCount,
          unreadChannels,
          displayName,
          isActive,
          email,
          photoUrl,
          username,
          role,
          createdAt,
          lastActive,
          updatedAt,
          online,
          extraData,
          banned,
          teams,
          language);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_User value) $default, {
    required TResult Function(OwnUser value) ownUser,
  }) {
    return ownUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_User value)? $default, {
    TResult Function(OwnUser value)? ownUser,
  }) {
    return ownUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_User value)? $default, {
    TResult Function(OwnUser value)? ownUser,
    required TResult orElse(),
  }) {
    if (ownUser != null) {
      return ownUser(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OwnUserToJson(this);
  }
}

abstract class OwnUser implements User {
  const factory OwnUser(
      {required String uid,
      required List<Mute> mutes,
      required List<Mute> channelMutes,
      required int totalUnreadCount,
      required int unreadChannels,
      String? displayName,
      bool? isActive,
      String? email,
      String? photoUrl,
      String? username,
      String? role,
      DateTime? createdAt,
      DateTime? lastActive,
      DateTime? updatedAt,
      bool online,
      Map<String, Object?> extraData,
      bool banned,
      List<String> teams,
      String? language}) = _$OwnUser;

  factory OwnUser.fromJson(Map<String, dynamic> json) = _$OwnUser.fromJson;

  @override
  String get uid; // required List<Device> devices,
  List<Mute> get mutes;
  List<Mute> get channelMutes;
  int get totalUnreadCount;
  int get unreadChannels;
  @override
  String? get displayName;
  @override
  bool? get isActive;
  @override
  String? get email;
  @override
  String? get photoUrl;
  @override
  String? get username;
  @override
  String? get role;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get lastActive;
  @override
  DateTime? get updatedAt;
  bool get online;
  Map<String, Object?> get extraData;
  bool get banned;
  List<String> get teams;
  String? get language;
  @override
  @JsonKey(ignore: true)
  $OwnUserCopyWith<OwnUser> get copyWith => throw _privateConstructorUsedError;
}

Mute _$MuteFromJson(Map<String, dynamic> json) {
  return _Mute.fromJson(json);
}

/// @nodoc
class _$MuteTearOff {
  const _$MuteTearOff();

  _Mute call(
      {required User user,
      required DateTime createdAt,
      required DateTime updatedAt}) {
    return _Mute(
      user: user,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  Mute fromJson(Map<String, Object?> json) {
    return Mute.fromJson(json);
  }
}

/// @nodoc
const $Mute = _$MuteTearOff();

/// @nodoc
mixin _$Mute {
  User get user =>
      throw _privateConstructorUsedError; // required ChannelModel channel,
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MuteCopyWith<Mute> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MuteCopyWith<$Res> {
  factory $MuteCopyWith(Mute value, $Res Function(Mute) then) =
      _$MuteCopyWithImpl<$Res>;
  $Res call({User user, DateTime createdAt, DateTime updatedAt});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$MuteCopyWithImpl<$Res> implements $MuteCopyWith<$Res> {
  _$MuteCopyWithImpl(this._value, this._then);

  final Mute _value;
  // ignore: unused_field
  final $Res Function(Mute) _then;

  @override
  $Res call({
    Object? user = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  @override
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc
abstract class _$MuteCopyWith<$Res> implements $MuteCopyWith<$Res> {
  factory _$MuteCopyWith(_Mute value, $Res Function(_Mute) then) =
      __$MuteCopyWithImpl<$Res>;
  @override
  $Res call({User user, DateTime createdAt, DateTime updatedAt});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$MuteCopyWithImpl<$Res> extends _$MuteCopyWithImpl<$Res>
    implements _$MuteCopyWith<$Res> {
  __$MuteCopyWithImpl(_Mute _value, $Res Function(_Mute) _then)
      : super(_value, (v) => _then(v as _Mute));

  @override
  _Mute get _value => super._value as _Mute;

  @override
  $Res call({
    Object? user = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_Mute(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Mute implements _Mute {
  const _$_Mute(
      {required this.user, required this.createdAt, required this.updatedAt});

  factory _$_Mute.fromJson(Map<String, dynamic> json) => _$$_MuteFromJson(json);

  @override
  final User user;
  @override // required ChannelModel channel,
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Mute(user: $user, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Mute &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  _$MuteCopyWith<_Mute> get copyWith =>
      __$MuteCopyWithImpl<_Mute>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MuteToJson(this);
  }
}

abstract class _Mute implements Mute {
  const factory _Mute(
      {required User user,
      required DateTime createdAt,
      required DateTime updatedAt}) = _$_Mute;

  factory _Mute.fromJson(Map<String, dynamic> json) = _$_Mute.fromJson;

  @override
  User get user;
  @override // required ChannelModel channel,
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$MuteCopyWith<_Mute> get copyWith => throw _privateConstructorUsedError;
}
