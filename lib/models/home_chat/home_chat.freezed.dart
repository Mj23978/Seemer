// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_chat.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

HomeChat _$HomeChatFromJson(Map<String, dynamic> json) {
  return _HomeChat.fromJson(json);
}

/// @nodoc
class _$HomeChatTearOff {
  const _$HomeChatTearOff();

  _HomeChat call(
      {required String id,
      required String chatId,
      required String name,
      required String lastMessage,
      required DateTime time,
      String? image}) {
    return _HomeChat(
      id: id,
      chatId: chatId,
      name: name,
      lastMessage: lastMessage,
      time: time,
      image: image,
    );
  }

  HomeChat fromJson(Map<String, Object?> json) {
    return HomeChat.fromJson(json);
  }
}

/// @nodoc
const $HomeChat = _$HomeChatTearOff();

/// @nodoc
mixin _$HomeChat {
  String get id => throw _privateConstructorUsedError;
  String get chatId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get lastMessage => throw _privateConstructorUsedError;
  DateTime get time => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $HomeChatCopyWith<HomeChat> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeChatCopyWith<$Res> {
  factory $HomeChatCopyWith(HomeChat value, $Res Function(HomeChat) then) =
      _$HomeChatCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String chatId,
      String name,
      String lastMessage,
      DateTime time,
      String? image});
}

/// @nodoc
class _$HomeChatCopyWithImpl<$Res> implements $HomeChatCopyWith<$Res> {
  _$HomeChatCopyWithImpl(this._value, this._then);

  final HomeChat _value;
  // ignore: unused_field
  final $Res Function(HomeChat) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? chatId = freezed,
    Object? name = freezed,
    Object? lastMessage = freezed,
    Object? time = freezed,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      chatId: chatId == freezed
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lastMessage: lastMessage == freezed
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as String,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$HomeChatCopyWith<$Res> implements $HomeChatCopyWith<$Res> {
  factory _$HomeChatCopyWith(_HomeChat value, $Res Function(_HomeChat) then) =
      __$HomeChatCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String chatId,
      String name,
      String lastMessage,
      DateTime time,
      String? image});
}

/// @nodoc
class __$HomeChatCopyWithImpl<$Res> extends _$HomeChatCopyWithImpl<$Res>
    implements _$HomeChatCopyWith<$Res> {
  __$HomeChatCopyWithImpl(_HomeChat _value, $Res Function(_HomeChat) _then)
      : super(_value, (v) => _then(v as _HomeChat));

  @override
  _HomeChat get _value => super._value as _HomeChat;

  @override
  $Res call({
    Object? id = freezed,
    Object? chatId = freezed,
    Object? name = freezed,
    Object? lastMessage = freezed,
    Object? time = freezed,
    Object? image = freezed,
  }) {
    return _then(_HomeChat(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      chatId: chatId == freezed
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lastMessage: lastMessage == freezed
          ? _value.lastMessage
          : lastMessage // ignore: cast_nullable_to_non_nullable
              as String,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_HomeChat implements _HomeChat {
  const _$_HomeChat(
      {required this.id,
      required this.chatId,
      required this.name,
      required this.lastMessage,
      required this.time,
      this.image});

  factory _$_HomeChat.fromJson(Map<String, dynamic> json) =>
      _$$_HomeChatFromJson(json);

  @override
  final String id;
  @override
  final String chatId;
  @override
  final String name;
  @override
  final String lastMessage;
  @override
  final DateTime time;
  @override
  final String? image;

  @override
  String toString() {
    return 'HomeChat(id: $id, chatId: $chatId, name: $name, lastMessage: $lastMessage, time: $time, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeChat &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.lastMessage, lastMessage) ||
                other.lastMessage == lastMessage) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, chatId, name, lastMessage, time, image);

  @JsonKey(ignore: true)
  @override
  _$HomeChatCopyWith<_HomeChat> get copyWith =>
      __$HomeChatCopyWithImpl<_HomeChat>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_HomeChatToJson(this);
  }
}

abstract class _HomeChat implements HomeChat {
  const factory _HomeChat(
      {required String id,
      required String chatId,
      required String name,
      required String lastMessage,
      required DateTime time,
      String? image}) = _$_HomeChat;

  factory _HomeChat.fromJson(Map<String, dynamic> json) = _$_HomeChat.fromJson;

  @override
  String get id;
  @override
  String get chatId;
  @override
  String get name;
  @override
  String get lastMessage;
  @override
  DateTime get time;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$HomeChatCopyWith<_HomeChat> get copyWith =>
      throw _privateConstructorUsedError;
}
