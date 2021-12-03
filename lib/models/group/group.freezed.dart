// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'group.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Group _$GroupFromJson(Map<String, dynamic> json) {
  return _Group.fromJson(json);
}

/// @nodoc
class _$GroupTearOff {
  const _$GroupTearOff();

  _Group call(
      {required String id,
      required String groupName,
      String? groupImage,
      DateTime? lastMessageTime,
      List<int>? memberIDs}) {
    return _Group(
      id: id,
      groupName: groupName,
      groupImage: groupImage,
      lastMessageTime: lastMessageTime,
      memberIDs: memberIDs,
    );
  }

  Group fromJson(Map<String, Object?> json) {
    return Group.fromJson(json);
  }
}

/// @nodoc
const $Group = _$GroupTearOff();

/// @nodoc
mixin _$Group {
  String get id => throw _privateConstructorUsedError;
  String get groupName => throw _privateConstructorUsedError;
  String? get groupImage => throw _privateConstructorUsedError;
  DateTime? get lastMessageTime => throw _privateConstructorUsedError;
  List<int>? get memberIDs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GroupCopyWith<Group> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GroupCopyWith<$Res> {
  factory $GroupCopyWith(Group value, $Res Function(Group) then) =
      _$GroupCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String groupName,
      String? groupImage,
      DateTime? lastMessageTime,
      List<int>? memberIDs});
}

/// @nodoc
class _$GroupCopyWithImpl<$Res> implements $GroupCopyWith<$Res> {
  _$GroupCopyWithImpl(this._value, this._then);

  final Group _value;
  // ignore: unused_field
  final $Res Function(Group) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? groupName = freezed,
    Object? groupImage = freezed,
    Object? lastMessageTime = freezed,
    Object? memberIDs = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      groupName: groupName == freezed
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String,
      groupImage: groupImage == freezed
          ? _value.groupImage
          : groupImage // ignore: cast_nullable_to_non_nullable
              as String?,
      lastMessageTime: lastMessageTime == freezed
          ? _value.lastMessageTime
          : lastMessageTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      memberIDs: memberIDs == freezed
          ? _value.memberIDs
          : memberIDs // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
abstract class _$GroupCopyWith<$Res> implements $GroupCopyWith<$Res> {
  factory _$GroupCopyWith(_Group value, $Res Function(_Group) then) =
      __$GroupCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String groupName,
      String? groupImage,
      DateTime? lastMessageTime,
      List<int>? memberIDs});
}

/// @nodoc
class __$GroupCopyWithImpl<$Res> extends _$GroupCopyWithImpl<$Res>
    implements _$GroupCopyWith<$Res> {
  __$GroupCopyWithImpl(_Group _value, $Res Function(_Group) _then)
      : super(_value, (v) => _then(v as _Group));

  @override
  _Group get _value => super._value as _Group;

  @override
  $Res call({
    Object? id = freezed,
    Object? groupName = freezed,
    Object? groupImage = freezed,
    Object? lastMessageTime = freezed,
    Object? memberIDs = freezed,
  }) {
    return _then(_Group(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      groupName: groupName == freezed
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String,
      groupImage: groupImage == freezed
          ? _value.groupImage
          : groupImage // ignore: cast_nullable_to_non_nullable
              as String?,
      lastMessageTime: lastMessageTime == freezed
          ? _value.lastMessageTime
          : lastMessageTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      memberIDs: memberIDs == freezed
          ? _value.memberIDs
          : memberIDs // ignore: cast_nullable_to_non_nullable
              as List<int>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Group implements _Group {
  const _$_Group(
      {required this.id,
      required this.groupName,
      this.groupImage,
      this.lastMessageTime,
      this.memberIDs});

  factory _$_Group.fromJson(Map<String, dynamic> json) =>
      _$$_GroupFromJson(json);

  @override
  final String id;
  @override
  final String groupName;
  @override
  final String? groupImage;
  @override
  final DateTime? lastMessageTime;
  @override
  final List<int>? memberIDs;

  @override
  String toString() {
    return 'Group(id: $id, groupName: $groupName, groupImage: $groupImage, lastMessageTime: $lastMessageTime, memberIDs: $memberIDs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Group &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.groupName, groupName) ||
                other.groupName == groupName) &&
            (identical(other.groupImage, groupImage) ||
                other.groupImage == groupImage) &&
            (identical(other.lastMessageTime, lastMessageTime) ||
                other.lastMessageTime == lastMessageTime) &&
            const DeepCollectionEquality().equals(other.memberIDs, memberIDs));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, groupName, groupImage,
      lastMessageTime, const DeepCollectionEquality().hash(memberIDs));

  @JsonKey(ignore: true)
  @override
  _$GroupCopyWith<_Group> get copyWith =>
      __$GroupCopyWithImpl<_Group>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GroupToJson(this);
  }
}

abstract class _Group implements Group {
  const factory _Group(
      {required String id,
      required String groupName,
      String? groupImage,
      DateTime? lastMessageTime,
      List<int>? memberIDs}) = _$_Group;

  factory _Group.fromJson(Map<String, dynamic> json) = _$_Group.fromJson;

  @override
  String get id;
  @override
  String get groupName;
  @override
  String? get groupImage;
  @override
  DateTime? get lastMessageTime;
  @override
  List<int>? get memberIDs;
  @override
  @JsonKey(ignore: true)
  _$GroupCopyWith<_Group> get copyWith => throw _privateConstructorUsedError;
}
