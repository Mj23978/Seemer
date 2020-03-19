// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'genres_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GenresModel> _$genresModelSerializer = new _$GenresModelSerializer();

class _$GenresModelSerializer implements StructuredSerializer<GenresModel> {
  @override
  final Iterable<Type> types = const [GenresModel, _$GenresModel];
  @override
  final String wireName = 'GenresModel';

  @override
  Iterable<Object> serialize(Serializers serializers, GenresModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GenresModel deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GenresModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GenresModel extends GenresModel {
  @override
  final int id;
  @override
  final String name;

  factory _$GenresModel([void Function(GenresModelBuilder) updates]) =>
      (new GenresModelBuilder()..update(updates)).build();

  _$GenresModel._({this.id, this.name}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('GenresModel', 'id');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('GenresModel', 'name');
    }
  }

  @override
  GenresModel rebuild(void Function(GenresModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GenresModelBuilder toBuilder() => new GenresModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GenresModel && id == other.id && name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GenresModel')
          ..add('id', id)
          ..add('name', name))
        .toString();
  }
}

class GenresModelBuilder implements Builder<GenresModel, GenresModelBuilder> {
  _$GenresModel _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  GenresModelBuilder();

  GenresModelBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GenresModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GenresModel;
  }

  @override
  void update(void Function(GenresModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GenresModel build() {
    final _$result = _$v ?? new _$GenresModel._(id: id, name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
