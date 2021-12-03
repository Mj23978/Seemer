// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FilterTearOff {
  const _$FilterTearOff();

  _Filter _({required FilterOperator operator, String? key, Object? value}) {
    return _Filter(
      operator: operator,
      key: key,
      value: value,
    );
  }
}

/// @nodoc
const $Filter = _$FilterTearOff();

/// @nodoc
mixin _$Filter {
  FilterOperator get operator => throw _privateConstructorUsedError;
  String? get key => throw _privateConstructorUsedError;
  Object? get value => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilterCopyWith<Filter> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterCopyWith<$Res> {
  factory $FilterCopyWith(Filter value, $Res Function(Filter) then) =
      _$FilterCopyWithImpl<$Res>;
  $Res call({FilterOperator operator, String? key, Object? value});
}

/// @nodoc
class _$FilterCopyWithImpl<$Res> implements $FilterCopyWith<$Res> {
  _$FilterCopyWithImpl(this._value, this._then);

  final Filter _value;
  // ignore: unused_field
  final $Res Function(Filter) _then;

  @override
  $Res call({
    Object? operator = freezed,
    Object? key = freezed,
    Object? value = freezed,
  }) {
    return _then(_value.copyWith(
      operator: operator == freezed
          ? _value.operator
          : operator // ignore: cast_nullable_to_non_nullable
              as FilterOperator,
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      value: value == freezed ? _value.value : value,
    ));
  }
}

/// @nodoc
abstract class _$FilterCopyWith<$Res> implements $FilterCopyWith<$Res> {
  factory _$FilterCopyWith(_Filter value, $Res Function(_Filter) then) =
      __$FilterCopyWithImpl<$Res>;
  @override
  $Res call({FilterOperator operator, String? key, Object? value});
}

/// @nodoc
class __$FilterCopyWithImpl<$Res> extends _$FilterCopyWithImpl<$Res>
    implements _$FilterCopyWith<$Res> {
  __$FilterCopyWithImpl(_Filter _value, $Res Function(_Filter) _then)
      : super(_value, (v) => _then(v as _Filter));

  @override
  _Filter get _value => super._value as _Filter;

  @override
  $Res call({
    Object? operator = freezed,
    Object? key = freezed,
    Object? value = freezed,
  }) {
    return _then(_Filter(
      operator: operator == freezed
          ? _value.operator
          : operator // ignore: cast_nullable_to_non_nullable
              as FilterOperator,
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String?,
      value: value == freezed ? _value.value : value,
    ));
  }
}

/// @nodoc

class _$_Filter implements _Filter {
  const _$_Filter({required this.operator, this.key, this.value});

  @override
  final FilterOperator operator;
  @override
  final String? key;
  @override
  final Object? value;

  @override
  String toString() {
    return 'Filter._(operator: $operator, key: $key, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Filter &&
            (identical(other.operator, operator) ||
                other.operator == operator) &&
            (identical(other.key, key) || other.key == key) &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, operator, key, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$FilterCopyWith<_Filter> get copyWith =>
      __$FilterCopyWithImpl<_Filter>(this, _$identity);
}

abstract class _Filter implements Filter {
  const factory _Filter(
      {required FilterOperator operator,
      String? key,
      Object? value}) = _$_Filter;

  @override
  FilterOperator get operator;
  @override
  String? get key;
  @override
  Object? get value;
  @override
  @JsonKey(ignore: true)
  _$FilterCopyWith<_Filter> get copyWith => throw _privateConstructorUsedError;
}

SortOption<T> _$SortOptionFromJson<T>(Map<String, dynamic> json) {
  return _SortOption<T>.fromJson(json);
}

/// @nodoc
class _$SortOptionTearOff {
  const _$SortOptionTearOff();

  _SortOption<T> call<T>(
      {required String field,
      required int direction,
      @JsonKey(ignore: true) dynamic Function(T, T)? comparator}) {
    return _SortOption<T>(
      field: field,
      direction: direction,
      comparator: comparator,
    );
  }

  SortOption<T> fromJson<T>(Map<String, Object?> json) {
    return SortOption<T>.fromJson(json);
  }
}

/// @nodoc
const $SortOption = _$SortOptionTearOff();

/// @nodoc
mixin _$SortOption<T> {
  String get field => throw _privateConstructorUsedError;
  int get direction => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  dynamic Function(T, T)? get comparator => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SortOptionCopyWith<T, SortOption<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SortOptionCopyWith<T, $Res> {
  factory $SortOptionCopyWith(
          SortOption<T> value, $Res Function(SortOption<T>) then) =
      _$SortOptionCopyWithImpl<T, $Res>;
  $Res call(
      {String field,
      int direction,
      @JsonKey(ignore: true) dynamic Function(T, T)? comparator});
}

/// @nodoc
class _$SortOptionCopyWithImpl<T, $Res>
    implements $SortOptionCopyWith<T, $Res> {
  _$SortOptionCopyWithImpl(this._value, this._then);

  final SortOption<T> _value;
  // ignore: unused_field
  final $Res Function(SortOption<T>) _then;

  @override
  $Res call({
    Object? field = freezed,
    Object? direction = freezed,
    Object? comparator = freezed,
  }) {
    return _then(_value.copyWith(
      field: field == freezed
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String,
      direction: direction == freezed
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as int,
      comparator: comparator == freezed
          ? _value.comparator
          : comparator // ignore: cast_nullable_to_non_nullable
              as dynamic Function(T, T)?,
    ));
  }
}

/// @nodoc
abstract class _$SortOptionCopyWith<T, $Res>
    implements $SortOptionCopyWith<T, $Res> {
  factory _$SortOptionCopyWith(
          _SortOption<T> value, $Res Function(_SortOption<T>) then) =
      __$SortOptionCopyWithImpl<T, $Res>;
  @override
  $Res call(
      {String field,
      int direction,
      @JsonKey(ignore: true) dynamic Function(T, T)? comparator});
}

/// @nodoc
class __$SortOptionCopyWithImpl<T, $Res>
    extends _$SortOptionCopyWithImpl<T, $Res>
    implements _$SortOptionCopyWith<T, $Res> {
  __$SortOptionCopyWithImpl(
      _SortOption<T> _value, $Res Function(_SortOption<T>) _then)
      : super(_value, (v) => _then(v as _SortOption<T>));

  @override
  _SortOption<T> get _value => super._value as _SortOption<T>;

  @override
  $Res call({
    Object? field = freezed,
    Object? direction = freezed,
    Object? comparator = freezed,
  }) {
    return _then(_SortOption<T>(
      field: field == freezed
          ? _value.field
          : field // ignore: cast_nullable_to_non_nullable
              as String,
      direction: direction == freezed
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as int,
      comparator: comparator == freezed
          ? _value.comparator
          : comparator // ignore: cast_nullable_to_non_nullable
              as dynamic Function(T, T)?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SortOption<T> implements _SortOption<T> {
  const _$_SortOption(
      {required this.field,
      required this.direction,
      @JsonKey(ignore: true) this.comparator});

  factory _$_SortOption.fromJson(Map<String, dynamic> json) =>
      _$$_SortOptionFromJson(json);

  @override
  final String field;
  @override
  final int direction;
  @override
  @JsonKey(ignore: true)
  final dynamic Function(T, T)? comparator;

  @override
  String toString() {
    return 'SortOption<$T>(field: $field, direction: $direction, comparator: $comparator)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SortOption<T> &&
            (identical(other.field, field) || other.field == field) &&
            (identical(other.direction, direction) ||
                other.direction == direction) &&
            (identical(other.comparator, comparator) ||
                other.comparator == comparator));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field, direction, comparator);

  @JsonKey(ignore: true)
  @override
  _$SortOptionCopyWith<T, _SortOption<T>> get copyWith =>
      __$SortOptionCopyWithImpl<T, _SortOption<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SortOptionToJson(this);
  }
}

abstract class _SortOption<T> implements SortOption<T> {
  const factory _SortOption(
          {required String field,
          required int direction,
          @JsonKey(ignore: true) dynamic Function(T, T)? comparator}) =
      _$_SortOption<T>;

  factory _SortOption.fromJson(Map<String, dynamic> json) =
      _$_SortOption<T>.fromJson;

  @override
  String get field;
  @override
  int get direction;
  @override
  @JsonKey(ignore: true)
  dynamic Function(T, T)? get comparator;
  @override
  @JsonKey(ignore: true)
  _$SortOptionCopyWith<T, _SortOption<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

PaginationParams _$PaginationParamsFromJson(Map<String, dynamic> json) {
  return _PaginationParams.fromJson(json);
}

/// @nodoc
class _$PaginationParamsTearOff {
  const _$PaginationParamsTearOff();

  _PaginationParams call(
      {int limit = 10,
      int? offset,
      String? next,
      @JsonKey(name: 'id_gt') String? greaterThan,
      @JsonKey(name: 'id_gte') String? greaterThanOrEqual,
      @JsonKey(name: 'id_lt') String? lessThan,
      @JsonKey(name: 'id_lte') String? lessThanOrEqual}) {
    return _PaginationParams(
      limit: limit,
      offset: offset,
      next: next,
      greaterThan: greaterThan,
      greaterThanOrEqual: greaterThanOrEqual,
      lessThan: lessThan,
      lessThanOrEqual: lessThanOrEqual,
    );
  }

  PaginationParams fromJson(Map<String, Object?> json) {
    return PaginationParams.fromJson(json);
  }
}

/// @nodoc
const $PaginationParams = _$PaginationParamsTearOff();

/// @nodoc
mixin _$PaginationParams {
  int get limit => throw _privateConstructorUsedError;
  int? get offset => throw _privateConstructorUsedError;
  String? get next => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_gt')
  String? get greaterThan => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_gte')
  String? get greaterThanOrEqual => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_lt')
  String? get lessThan => throw _privateConstructorUsedError;
  @JsonKey(name: 'id_lte')
  String? get lessThanOrEqual => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginationParamsCopyWith<PaginationParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationParamsCopyWith<$Res> {
  factory $PaginationParamsCopyWith(
          PaginationParams value, $Res Function(PaginationParams) then) =
      _$PaginationParamsCopyWithImpl<$Res>;
  $Res call(
      {int limit,
      int? offset,
      String? next,
      @JsonKey(name: 'id_gt') String? greaterThan,
      @JsonKey(name: 'id_gte') String? greaterThanOrEqual,
      @JsonKey(name: 'id_lt') String? lessThan,
      @JsonKey(name: 'id_lte') String? lessThanOrEqual});
}

/// @nodoc
class _$PaginationParamsCopyWithImpl<$Res>
    implements $PaginationParamsCopyWith<$Res> {
  _$PaginationParamsCopyWithImpl(this._value, this._then);

  final PaginationParams _value;
  // ignore: unused_field
  final $Res Function(PaginationParams) _then;

  @override
  $Res call({
    Object? limit = freezed,
    Object? offset = freezed,
    Object? next = freezed,
    Object? greaterThan = freezed,
    Object? greaterThanOrEqual = freezed,
    Object? lessThan = freezed,
    Object? lessThanOrEqual = freezed,
  }) {
    return _then(_value.copyWith(
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
      next: next == freezed
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      greaterThan: greaterThan == freezed
          ? _value.greaterThan
          : greaterThan // ignore: cast_nullable_to_non_nullable
              as String?,
      greaterThanOrEqual: greaterThanOrEqual == freezed
          ? _value.greaterThanOrEqual
          : greaterThanOrEqual // ignore: cast_nullable_to_non_nullable
              as String?,
      lessThan: lessThan == freezed
          ? _value.lessThan
          : lessThan // ignore: cast_nullable_to_non_nullable
              as String?,
      lessThanOrEqual: lessThanOrEqual == freezed
          ? _value.lessThanOrEqual
          : lessThanOrEqual // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$PaginationParamsCopyWith<$Res>
    implements $PaginationParamsCopyWith<$Res> {
  factory _$PaginationParamsCopyWith(
          _PaginationParams value, $Res Function(_PaginationParams) then) =
      __$PaginationParamsCopyWithImpl<$Res>;
  @override
  $Res call(
      {int limit,
      int? offset,
      String? next,
      @JsonKey(name: 'id_gt') String? greaterThan,
      @JsonKey(name: 'id_gte') String? greaterThanOrEqual,
      @JsonKey(name: 'id_lt') String? lessThan,
      @JsonKey(name: 'id_lte') String? lessThanOrEqual});
}

/// @nodoc
class __$PaginationParamsCopyWithImpl<$Res>
    extends _$PaginationParamsCopyWithImpl<$Res>
    implements _$PaginationParamsCopyWith<$Res> {
  __$PaginationParamsCopyWithImpl(
      _PaginationParams _value, $Res Function(_PaginationParams) _then)
      : super(_value, (v) => _then(v as _PaginationParams));

  @override
  _PaginationParams get _value => super._value as _PaginationParams;

  @override
  $Res call({
    Object? limit = freezed,
    Object? offset = freezed,
    Object? next = freezed,
    Object? greaterThan = freezed,
    Object? greaterThanOrEqual = freezed,
    Object? lessThan = freezed,
    Object? lessThanOrEqual = freezed,
  }) {
    return _then(_PaginationParams(
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int?,
      next: next == freezed
          ? _value.next
          : next // ignore: cast_nullable_to_non_nullable
              as String?,
      greaterThan: greaterThan == freezed
          ? _value.greaterThan
          : greaterThan // ignore: cast_nullable_to_non_nullable
              as String?,
      greaterThanOrEqual: greaterThanOrEqual == freezed
          ? _value.greaterThanOrEqual
          : greaterThanOrEqual // ignore: cast_nullable_to_non_nullable
              as String?,
      lessThan: lessThan == freezed
          ? _value.lessThan
          : lessThan // ignore: cast_nullable_to_non_nullable
              as String?,
      lessThanOrEqual: lessThanOrEqual == freezed
          ? _value.lessThanOrEqual
          : lessThanOrEqual // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PaginationParams implements _PaginationParams {
  const _$_PaginationParams(
      {this.limit = 10,
      this.offset,
      this.next,
      @JsonKey(name: 'id_gt') this.greaterThan,
      @JsonKey(name: 'id_gte') this.greaterThanOrEqual,
      @JsonKey(name: 'id_lt') this.lessThan,
      @JsonKey(name: 'id_lte') this.lessThanOrEqual});

  factory _$_PaginationParams.fromJson(Map<String, dynamic> json) =>
      _$$_PaginationParamsFromJson(json);

  @JsonKey(defaultValue: 10)
  @override
  final int limit;
  @override
  final int? offset;
  @override
  final String? next;
  @override
  @JsonKey(name: 'id_gt')
  final String? greaterThan;
  @override
  @JsonKey(name: 'id_gte')
  final String? greaterThanOrEqual;
  @override
  @JsonKey(name: 'id_lt')
  final String? lessThan;
  @override
  @JsonKey(name: 'id_lte')
  final String? lessThanOrEqual;

  @override
  String toString() {
    return 'PaginationParams(limit: $limit, offset: $offset, next: $next, greaterThan: $greaterThan, greaterThanOrEqual: $greaterThanOrEqual, lessThan: $lessThan, lessThanOrEqual: $lessThanOrEqual)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PaginationParams &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.next, next) || other.next == next) &&
            (identical(other.greaterThan, greaterThan) ||
                other.greaterThan == greaterThan) &&
            (identical(other.greaterThanOrEqual, greaterThanOrEqual) ||
                other.greaterThanOrEqual == greaterThanOrEqual) &&
            (identical(other.lessThan, lessThan) ||
                other.lessThan == lessThan) &&
            (identical(other.lessThanOrEqual, lessThanOrEqual) ||
                other.lessThanOrEqual == lessThanOrEqual));
  }

  @override
  int get hashCode => Object.hash(runtimeType, limit, offset, next, greaterThan,
      greaterThanOrEqual, lessThan, lessThanOrEqual);

  @JsonKey(ignore: true)
  @override
  _$PaginationParamsCopyWith<_PaginationParams> get copyWith =>
      __$PaginationParamsCopyWithImpl<_PaginationParams>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PaginationParamsToJson(this);
  }
}

abstract class _PaginationParams implements PaginationParams {
  const factory _PaginationParams(
      {int limit,
      int? offset,
      String? next,
      @JsonKey(name: 'id_gt') String? greaterThan,
      @JsonKey(name: 'id_gte') String? greaterThanOrEqual,
      @JsonKey(name: 'id_lt') String? lessThan,
      @JsonKey(name: 'id_lte') String? lessThanOrEqual}) = _$_PaginationParams;

  factory _PaginationParams.fromJson(Map<String, dynamic> json) =
      _$_PaginationParams.fromJson;

  @override
  int get limit;
  @override
  int? get offset;
  @override
  String? get next;
  @override
  @JsonKey(name: 'id_gt')
  String? get greaterThan;
  @override
  @JsonKey(name: 'id_gte')
  String? get greaterThanOrEqual;
  @override
  @JsonKey(name: 'id_lt')
  String? get lessThan;
  @override
  @JsonKey(name: 'id_lte')
  String? get lessThanOrEqual;
  @override
  @JsonKey(ignore: true)
  _$PaginationParamsCopyWith<_PaginationParams> get copyWith =>
      throw _privateConstructorUsedError;
}
