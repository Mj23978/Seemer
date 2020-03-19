// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'people_tv_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PeopleTvModel> _$peopleTvModelSerializer =
    new _$PeopleTvModelSerializer();

class _$PeopleTvModelSerializer implements StructuredSerializer<PeopleTvModel> {
  @override
  final Iterable<Type> types = const [PeopleTvModel, _$PeopleTvModel];
  @override
  final String wireName = 'PeopleTvModel';

  @override
  Iterable<Object> serialize(Serializers serializers, PeopleTvModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'cast',
      serializers.serialize(object.cast,
          specifiedType:
              const FullType(BuiltList, const [const FullType(BaseTvResults)])),
      'crew',
      serializers.serialize(object.crew,
          specifiedType:
              const FullType(BuiltList, const [const FullType(BaseTvResults)])),
    ];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  PeopleTvModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PeopleTvModelBuilder();

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
        case 'cast':
          result.cast.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(BaseTvResults)]))
              as BuiltList<dynamic>);
          break;
        case 'crew':
          result.crew.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(BaseTvResults)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$PeopleTvModel extends PeopleTvModel {
  @override
  final int id;
  @override
  final BuiltList<BaseTvResults> cast;
  @override
  final BuiltList<BaseTvResults> crew;

  factory _$PeopleTvModel([void Function(PeopleTvModelBuilder) updates]) =>
      (new PeopleTvModelBuilder()..update(updates)).build();

  _$PeopleTvModel._({this.id, this.cast, this.crew}) : super._() {
    if (cast == null) {
      throw new BuiltValueNullFieldError('PeopleTvModel', 'cast');
    }
    if (crew == null) {
      throw new BuiltValueNullFieldError('PeopleTvModel', 'crew');
    }
  }

  @override
  PeopleTvModel rebuild(void Function(PeopleTvModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PeopleTvModelBuilder toBuilder() => new PeopleTvModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PeopleTvModel &&
        id == other.id &&
        cast == other.cast &&
        crew == other.crew;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, id.hashCode), cast.hashCode), crew.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PeopleTvModel')
          ..add('id', id)
          ..add('cast', cast)
          ..add('crew', crew))
        .toString();
  }
}

class PeopleTvModelBuilder
    implements Builder<PeopleTvModel, PeopleTvModelBuilder> {
  _$PeopleTvModel _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  ListBuilder<BaseTvResults> _cast;
  ListBuilder<BaseTvResults> get cast =>
      _$this._cast ??= new ListBuilder<BaseTvResults>();
  set cast(ListBuilder<BaseTvResults> cast) => _$this._cast = cast;

  ListBuilder<BaseTvResults> _crew;
  ListBuilder<BaseTvResults> get crew =>
      _$this._crew ??= new ListBuilder<BaseTvResults>();
  set crew(ListBuilder<BaseTvResults> crew) => _$this._crew = crew;

  PeopleTvModelBuilder();

  PeopleTvModelBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _cast = _$v.cast?.toBuilder();
      _crew = _$v.crew?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PeopleTvModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PeopleTvModel;
  }

  @override
  void update(void Function(PeopleTvModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PeopleTvModel build() {
    _$PeopleTvModel _$result;
    try {
      _$result = _$v ??
          new _$PeopleTvModel._(id: id, cast: cast.build(), crew: crew.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'cast';
        cast.build();
        _$failedField = 'crew';
        crew.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PeopleTvModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
