// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'call_log.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CallLog _$CallLogFromJson(Map<String, dynamic> json) {
  return _CallLog.fromJson(json);
}

/// @nodoc
class _$CallLogTearOff {
  const _$CallLogTearOff();

  _CallLog call(
      {required String id,
      required CallLogStatus status,
      String? receiverPic,
      String? callerPic,
      required DateTime createdAt}) {
    return _CallLog(
      id: id,
      status: status,
      receiverPic: receiverPic,
      callerPic: callerPic,
      createdAt: createdAt,
    );
  }

  CallLog fromJson(Map<String, Object?> json) {
    return CallLog.fromJson(json);
  }
}

/// @nodoc
const $CallLog = _$CallLogTearOff();

/// @nodoc
mixin _$CallLog {
  String get id => throw _privateConstructorUsedError;
  CallLogStatus get status => throw _privateConstructorUsedError;
  String? get receiverPic => throw _privateConstructorUsedError;
  String? get callerPic => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CallLogCopyWith<CallLog> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CallLogCopyWith<$Res> {
  factory $CallLogCopyWith(CallLog value, $Res Function(CallLog) then) =
      _$CallLogCopyWithImpl<$Res>;
  $Res call(
      {String id,
      CallLogStatus status,
      String? receiverPic,
      String? callerPic,
      DateTime createdAt});
}

/// @nodoc
class _$CallLogCopyWithImpl<$Res> implements $CallLogCopyWith<$Res> {
  _$CallLogCopyWithImpl(this._value, this._then);

  final CallLog _value;
  // ignore: unused_field
  final $Res Function(CallLog) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? status = freezed,
    Object? receiverPic = freezed,
    Object? callerPic = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CallLogStatus,
      receiverPic: receiverPic == freezed
          ? _value.receiverPic
          : receiverPic // ignore: cast_nullable_to_non_nullable
              as String?,
      callerPic: callerPic == freezed
          ? _value.callerPic
          : callerPic // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$CallLogCopyWith<$Res> implements $CallLogCopyWith<$Res> {
  factory _$CallLogCopyWith(_CallLog value, $Res Function(_CallLog) then) =
      __$CallLogCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      CallLogStatus status,
      String? receiverPic,
      String? callerPic,
      DateTime createdAt});
}

/// @nodoc
class __$CallLogCopyWithImpl<$Res> extends _$CallLogCopyWithImpl<$Res>
    implements _$CallLogCopyWith<$Res> {
  __$CallLogCopyWithImpl(_CallLog _value, $Res Function(_CallLog) _then)
      : super(_value, (v) => _then(v as _CallLog));

  @override
  _CallLog get _value => super._value as _CallLog;

  @override
  $Res call({
    Object? id = freezed,
    Object? status = freezed,
    Object? receiverPic = freezed,
    Object? callerPic = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_CallLog(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CallLogStatus,
      receiverPic: receiverPic == freezed
          ? _value.receiverPic
          : receiverPic // ignore: cast_nullable_to_non_nullable
              as String?,
      callerPic: callerPic == freezed
          ? _value.callerPic
          : callerPic // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CallLog implements _CallLog {
  const _$_CallLog(
      {required this.id,
      required this.status,
      this.receiverPic,
      this.callerPic,
      required this.createdAt});

  factory _$_CallLog.fromJson(Map<String, dynamic> json) =>
      _$$_CallLogFromJson(json);

  @override
  final String id;
  @override
  final CallLogStatus status;
  @override
  final String? receiverPic;
  @override
  final String? callerPic;
  @override
  final DateTime createdAt;

  @override
  String toString() {
    return 'CallLog(id: $id, status: $status, receiverPic: $receiverPic, callerPic: $callerPic, createdAt: $createdAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CallLog &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.receiverPic, receiverPic) ||
                other.receiverPic == receiverPic) &&
            (identical(other.callerPic, callerPic) ||
                other.callerPic == callerPic) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, status, receiverPic, callerPic, createdAt);

  @JsonKey(ignore: true)
  @override
  _$CallLogCopyWith<_CallLog> get copyWith =>
      __$CallLogCopyWithImpl<_CallLog>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CallLogToJson(this);
  }
}

abstract class _CallLog implements CallLog {
  const factory _CallLog(
      {required String id,
      required CallLogStatus status,
      String? receiverPic,
      String? callerPic,
      required DateTime createdAt}) = _$_CallLog;

  factory _CallLog.fromJson(Map<String, dynamic> json) = _$_CallLog.fromJson;

  @override
  String get id;
  @override
  CallLogStatus get status;
  @override
  String? get receiverPic;
  @override
  String? get callerPic;
  @override
  DateTime get createdAt;
  @override
  @JsonKey(ignore: true)
  _$CallLogCopyWith<_CallLog> get copyWith =>
      throw _privateConstructorUsedError;
}
