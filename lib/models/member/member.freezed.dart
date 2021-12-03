// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'member.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Member _$MemberFromJson(Map<String, dynamic> json) {
  return _Member.fromJson(json);
}

/// @nodoc
class _$MemberTearOff {
  const _$MemberTearOff();

  _Member call(
      {bool invited = false,
      bool banned = false,
      bool shadowBanned = false,
      bool isModerator = false,
      User? user,
      DateTime? inviteAcceptedAt,
      DateTime? inviteRejectedAt,
      String? role,
      String? userId,
      DateTime? createdAt,
      DateTime? updatedAt}) {
    return _Member(
      invited: invited,
      banned: banned,
      shadowBanned: shadowBanned,
      isModerator: isModerator,
      user: user,
      inviteAcceptedAt: inviteAcceptedAt,
      inviteRejectedAt: inviteRejectedAt,
      role: role,
      userId: userId,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  Member fromJson(Map<String, Object?> json) {
    return Member.fromJson(json);
  }
}

/// @nodoc
const $Member = _$MemberTearOff();

/// @nodoc
mixin _$Member {
  bool get invited => throw _privateConstructorUsedError;
  bool get banned => throw _privateConstructorUsedError;
  bool get shadowBanned => throw _privateConstructorUsedError;
  bool get isModerator => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  DateTime? get inviteAcceptedAt => throw _privateConstructorUsedError;
  DateTime? get inviteRejectedAt => throw _privateConstructorUsedError;
  String? get role => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemberCopyWith<Member> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemberCopyWith<$Res> {
  factory $MemberCopyWith(Member value, $Res Function(Member) then) =
      _$MemberCopyWithImpl<$Res>;
  $Res call(
      {bool invited,
      bool banned,
      bool shadowBanned,
      bool isModerator,
      User? user,
      DateTime? inviteAcceptedAt,
      DateTime? inviteRejectedAt,
      String? role,
      String? userId,
      DateTime? createdAt,
      DateTime? updatedAt});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$MemberCopyWithImpl<$Res> implements $MemberCopyWith<$Res> {
  _$MemberCopyWithImpl(this._value, this._then);

  final Member _value;
  // ignore: unused_field
  final $Res Function(Member) _then;

  @override
  $Res call({
    Object? invited = freezed,
    Object? banned = freezed,
    Object? shadowBanned = freezed,
    Object? isModerator = freezed,
    Object? user = freezed,
    Object? inviteAcceptedAt = freezed,
    Object? inviteRejectedAt = freezed,
    Object? role = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      invited: invited == freezed
          ? _value.invited
          : invited // ignore: cast_nullable_to_non_nullable
              as bool,
      banned: banned == freezed
          ? _value.banned
          : banned // ignore: cast_nullable_to_non_nullable
              as bool,
      shadowBanned: shadowBanned == freezed
          ? _value.shadowBanned
          : shadowBanned // ignore: cast_nullable_to_non_nullable
              as bool,
      isModerator: isModerator == freezed
          ? _value.isModerator
          : isModerator // ignore: cast_nullable_to_non_nullable
              as bool,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      inviteAcceptedAt: inviteAcceptedAt == freezed
          ? _value.inviteAcceptedAt
          : inviteAcceptedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      inviteRejectedAt: inviteRejectedAt == freezed
          ? _value.inviteRejectedAt
          : inviteRejectedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$MemberCopyWith<$Res> implements $MemberCopyWith<$Res> {
  factory _$MemberCopyWith(_Member value, $Res Function(_Member) then) =
      __$MemberCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool invited,
      bool banned,
      bool shadowBanned,
      bool isModerator,
      User? user,
      DateTime? inviteAcceptedAt,
      DateTime? inviteRejectedAt,
      String? role,
      String? userId,
      DateTime? createdAt,
      DateTime? updatedAt});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$MemberCopyWithImpl<$Res> extends _$MemberCopyWithImpl<$Res>
    implements _$MemberCopyWith<$Res> {
  __$MemberCopyWithImpl(_Member _value, $Res Function(_Member) _then)
      : super(_value, (v) => _then(v as _Member));

  @override
  _Member get _value => super._value as _Member;

  @override
  $Res call({
    Object? invited = freezed,
    Object? banned = freezed,
    Object? shadowBanned = freezed,
    Object? isModerator = freezed,
    Object? user = freezed,
    Object? inviteAcceptedAt = freezed,
    Object? inviteRejectedAt = freezed,
    Object? role = freezed,
    Object? userId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_Member(
      invited: invited == freezed
          ? _value.invited
          : invited // ignore: cast_nullable_to_non_nullable
              as bool,
      banned: banned == freezed
          ? _value.banned
          : banned // ignore: cast_nullable_to_non_nullable
              as bool,
      shadowBanned: shadowBanned == freezed
          ? _value.shadowBanned
          : shadowBanned // ignore: cast_nullable_to_non_nullable
              as bool,
      isModerator: isModerator == freezed
          ? _value.isModerator
          : isModerator // ignore: cast_nullable_to_non_nullable
              as bool,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      inviteAcceptedAt: inviteAcceptedAt == freezed
          ? _value.inviteAcceptedAt
          : inviteAcceptedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      inviteRejectedAt: inviteRejectedAt == freezed
          ? _value.inviteRejectedAt
          : inviteRejectedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      role: role == freezed
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$_Member implements _Member {
  const _$_Member(
      {this.invited = false,
      this.banned = false,
      this.shadowBanned = false,
      this.isModerator = false,
      this.user,
      this.inviteAcceptedAt,
      this.inviteRejectedAt,
      this.role,
      this.userId,
      this.createdAt,
      this.updatedAt});

  factory _$_Member.fromJson(Map<String, dynamic> json) =>
      _$$_MemberFromJson(json);

  @JsonKey(defaultValue: false)
  @override
  final bool invited;
  @JsonKey(defaultValue: false)
  @override
  final bool banned;
  @JsonKey(defaultValue: false)
  @override
  final bool shadowBanned;
  @JsonKey(defaultValue: false)
  @override
  final bool isModerator;
  @override
  final User? user;
  @override
  final DateTime? inviteAcceptedAt;
  @override
  final DateTime? inviteRejectedAt;
  @override
  final String? role;
  @override
  final String? userId;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Member(invited: $invited, banned: $banned, shadowBanned: $shadowBanned, isModerator: $isModerator, user: $user, inviteAcceptedAt: $inviteAcceptedAt, inviteRejectedAt: $inviteRejectedAt, role: $role, userId: $userId, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Member &&
            (identical(other.invited, invited) || other.invited == invited) &&
            (identical(other.banned, banned) || other.banned == banned) &&
            (identical(other.shadowBanned, shadowBanned) ||
                other.shadowBanned == shadowBanned) &&
            (identical(other.isModerator, isModerator) ||
                other.isModerator == isModerator) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.inviteAcceptedAt, inviteAcceptedAt) ||
                other.inviteAcceptedAt == inviteAcceptedAt) &&
            (identical(other.inviteRejectedAt, inviteRejectedAt) ||
                other.inviteRejectedAt == inviteRejectedAt) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      invited,
      banned,
      shadowBanned,
      isModerator,
      user,
      inviteAcceptedAt,
      inviteRejectedAt,
      role,
      userId,
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  _$MemberCopyWith<_Member> get copyWith =>
      __$MemberCopyWithImpl<_Member>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MemberToJson(this);
  }
}

abstract class _Member implements Member {
  const factory _Member(
      {bool invited,
      bool banned,
      bool shadowBanned,
      bool isModerator,
      User? user,
      DateTime? inviteAcceptedAt,
      DateTime? inviteRejectedAt,
      String? role,
      String? userId,
      DateTime? createdAt,
      DateTime? updatedAt}) = _$_Member;

  factory _Member.fromJson(Map<String, dynamic> json) = _$_Member.fromJson;

  @override
  bool get invited;
  @override
  bool get banned;
  @override
  bool get shadowBanned;
  @override
  bool get isModerator;
  @override
  User? get user;
  @override
  DateTime? get inviteAcceptedAt;
  @override
  DateTime? get inviteRejectedAt;
  @override
  String? get role;
  @override
  String? get userId;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$MemberCopyWith<_Member> get copyWith => throw _privateConstructorUsedError;
}
