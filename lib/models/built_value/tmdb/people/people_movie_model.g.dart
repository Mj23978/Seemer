// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'people_movie_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PeopleMovieModel> _$peopleMovieModelSerializer =
    new _$PeopleMovieModelSerializer();

class _$PeopleMovieModelSerializer
    implements StructuredSerializer<PeopleMovieModel> {
  @override
  final Iterable<Type> types = const [PeopleMovieModel, _$PeopleMovieModel];
  @override
  final String wireName = 'PeopleMovieModel';

  @override
  Iterable<Object> serialize(Serializers serializers, PeopleMovieModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'cast',
      serializers.serialize(object.cast,
          specifiedType: const FullType(
              BuiltList, const [const FullType(BaseMovieResults)])),
      'crew',
      serializers.serialize(object.crew,
          specifiedType: const FullType(
              BuiltList, const [const FullType(BaseMovieResults)])),
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
  PeopleMovieModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PeopleMovieModelBuilder();

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
                      BuiltList, const [const FullType(BaseMovieResults)]))
              as BuiltList<dynamic>);
          break;
        case 'crew':
          result.crew.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(BaseMovieResults)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$PeopleMovieModel extends PeopleMovieModel {
  @override
  final int id;
  @override
  final BuiltList<BaseMovieResults> cast;
  @override
  final BuiltList<BaseMovieResults> crew;

  factory _$PeopleMovieModel(
          [void Function(PeopleMovieModelBuilder) updates]) =>
      (new PeopleMovieModelBuilder()..update(updates)).build();

  _$PeopleMovieModel._({this.id, this.cast, this.crew}) : super._() {
    if (cast == null) {
      throw new BuiltValueNullFieldError('PeopleMovieModel', 'cast');
    }
    if (crew == null) {
      throw new BuiltValueNullFieldError('PeopleMovieModel', 'crew');
    }
  }

  @override
  PeopleMovieModel rebuild(void Function(PeopleMovieModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PeopleMovieModelBuilder toBuilder() =>
      new PeopleMovieModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PeopleMovieModel &&
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
    return (newBuiltValueToStringHelper('PeopleMovieModel')
          ..add('id', id)
          ..add('cast', cast)
          ..add('crew', crew))
        .toString();
  }
}

class PeopleMovieModelBuilder
    implements Builder<PeopleMovieModel, PeopleMovieModelBuilder> {
  _$PeopleMovieModel _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  ListBuilder<BaseMovieResults> _cast;
  ListBuilder<BaseMovieResults> get cast =>
      _$this._cast ??= new ListBuilder<BaseMovieResults>();
  set cast(ListBuilder<BaseMovieResults> cast) => _$this._cast = cast;

  ListBuilder<BaseMovieResults> _crew;
  ListBuilder<BaseMovieResults> get crew =>
      _$this._crew ??= new ListBuilder<BaseMovieResults>();
  set crew(ListBuilder<BaseMovieResults> crew) => _$this._crew = crew;

  PeopleMovieModelBuilder();

  PeopleMovieModelBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _cast = _$v.cast?.toBuilder();
      _crew = _$v.crew?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PeopleMovieModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PeopleMovieModel;
  }

  @override
  void update(void Function(PeopleMovieModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PeopleMovieModel build() {
    _$PeopleMovieModel _$result;
    try {
      _$result = _$v ??
          new _$PeopleMovieModel._(
              id: id, cast: cast.build(), crew: crew.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'cast';
        cast.build();
        _$failedField = 'crew';
        crew.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PeopleMovieModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
