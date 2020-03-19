// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rated_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RatedModel> _$ratedModelSerializer = new _$RatedModelSerializer();

class _$RatedModelSerializer implements StructuredSerializer<RatedModel> {
  @override
  final Iterable<Type> types = const [RatedModel, _$RatedModel];
  @override
  final String wireName = 'RatedModel';

  @override
  Iterable<Object> serialize(Serializers serializers, RatedModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'value',
      serializers.serialize(object.value, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  RatedModel deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RatedModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'value':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$RatedModel extends RatedModel {
  @override
  final int value;

  factory _$RatedModel([void Function(RatedModelBuilder) updates]) =>
      (new RatedModelBuilder()..update(updates)).build();

  _$RatedModel._({this.value}) : super._() {
    if (value == null) {
      throw new BuiltValueNullFieldError('RatedModel', 'value');
    }
  }

  @override
  RatedModel rebuild(void Function(RatedModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RatedModelBuilder toBuilder() => new RatedModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RatedModel && value == other.value;
  }

  @override
  int get hashCode {
    return $jf($jc(0, value.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RatedModel')..add('value', value))
        .toString();
  }
}

class RatedModelBuilder implements Builder<RatedModel, RatedModelBuilder> {
  _$RatedModel _$v;

  int _value;
  int get value => _$this._value;
  set value(int value) => _$this._value = value;

  RatedModelBuilder();

  RatedModelBuilder get _$this {
    if (_$v != null) {
      _value = _$v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RatedModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RatedModel;
  }

  @override
  void update(void Function(RatedModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RatedModel build() {
    final _$result = _$v ?? new _$RatedModel._(value: value);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
