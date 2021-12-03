// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'command.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Command _$CommandFromJson(Map<String, dynamic> json) {
  return _Command.fromJson(json);
}

/// @nodoc
class _$CommandTearOff {
  const _$CommandTearOff();

  _Command call(
      {required String name,
      required String description,
      required String args}) {
    return _Command(
      name: name,
      description: description,
      args: args,
    );
  }

  Command fromJson(Map<String, Object?> json) {
    return Command.fromJson(json);
  }
}

/// @nodoc
const $Command = _$CommandTearOff();

/// @nodoc
mixin _$Command {
  String get name => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get args => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CommandCopyWith<Command> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommandCopyWith<$Res> {
  factory $CommandCopyWith(Command value, $Res Function(Command) then) =
      _$CommandCopyWithImpl<$Res>;
  $Res call({String name, String description, String args});
}

/// @nodoc
class _$CommandCopyWithImpl<$Res> implements $CommandCopyWith<$Res> {
  _$CommandCopyWithImpl(this._value, this._then);

  final Command _value;
  // ignore: unused_field
  final $Res Function(Command) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? args = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      args: args == freezed
          ? _value.args
          : args // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CommandCopyWith<$Res> implements $CommandCopyWith<$Res> {
  factory _$CommandCopyWith(_Command value, $Res Function(_Command) then) =
      __$CommandCopyWithImpl<$Res>;
  @override
  $Res call({String name, String description, String args});
}

/// @nodoc
class __$CommandCopyWithImpl<$Res> extends _$CommandCopyWithImpl<$Res>
    implements _$CommandCopyWith<$Res> {
  __$CommandCopyWithImpl(_Command _value, $Res Function(_Command) _then)
      : super(_value, (v) => _then(v as _Command));

  @override
  _Command get _value => super._value as _Command;

  @override
  $Res call({
    Object? name = freezed,
    Object? description = freezed,
    Object? args = freezed,
  }) {
    return _then(_Command(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      args: args == freezed
          ? _value.args
          : args // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Command implements _Command {
  const _$_Command(
      {required this.name, required this.description, required this.args});

  factory _$_Command.fromJson(Map<String, dynamic> json) =>
      _$$_CommandFromJson(json);

  @override
  final String name;
  @override
  final String description;
  @override
  final String args;

  @override
  String toString() {
    return 'Command(name: $name, description: $description, args: $args)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Command &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.args, args) || other.args == args));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, description, args);

  @JsonKey(ignore: true)
  @override
  _$CommandCopyWith<_Command> get copyWith =>
      __$CommandCopyWithImpl<_Command>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommandToJson(this);
  }
}

abstract class _Command implements Command {
  const factory _Command(
      {required String name,
      required String description,
      required String args}) = _$_Command;

  factory _Command.fromJson(Map<String, dynamic> json) = _$_Command.fromJson;

  @override
  String get name;
  @override
  String get description;
  @override
  String get args;
  @override
  @JsonKey(ignore: true)
  _$CommandCopyWith<_Command> get copyWith =>
      throw _privateConstructorUsedError;
}
