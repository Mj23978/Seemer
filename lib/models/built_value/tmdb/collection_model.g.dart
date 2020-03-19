// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CollectionModel> _$collectionModelSerializer =
    new _$CollectionModelSerializer();

class _$CollectionModelSerializer
    implements StructuredSerializer<CollectionModel> {
  @override
  final Iterable<Type> types = const [CollectionModel, _$CollectionModel];
  @override
  final String wireName = 'CollectionModel';

  @override
  Iterable<Object> serialize(Serializers serializers, CollectionModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'parts',
      serializers.serialize(object.parts,
          specifiedType: const FullType(
              BuiltList, const [const FullType(BaseMovieResults)])),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'overview',
      serializers.serialize(object.overview,
          specifiedType: const FullType(String)),
      'poster_path',
      serializers.serialize(object.poster,
          specifiedType: const FullType(String)),
      'backdrop_path',
      serializers.serialize(object.backdrop,
          specifiedType: const FullType(String)),
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
  CollectionModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CollectionModelBuilder();

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
        case 'parts':
          result.parts.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(BaseMovieResults)]))
              as BuiltList<dynamic>);
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'overview':
          result.overview = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'poster_path':
          result.poster = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'backdrop_path':
          result.backdrop = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CollectionModel extends CollectionModel {
  @override
  final int id;
  @override
  final BuiltList<BaseMovieResults> parts;
  @override
  final String name;
  @override
  final String overview;
  @override
  final String poster;
  @override
  final String backdrop;

  factory _$CollectionModel([void Function(CollectionModelBuilder) updates]) =>
      (new CollectionModelBuilder()..update(updates)).build();

  _$CollectionModel._(
      {this.id,
      this.parts,
      this.name,
      this.overview,
      this.poster,
      this.backdrop})
      : super._() {
    if (parts == null) {
      throw new BuiltValueNullFieldError('CollectionModel', 'parts');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('CollectionModel', 'name');
    }
    if (overview == null) {
      throw new BuiltValueNullFieldError('CollectionModel', 'overview');
    }
    if (poster == null) {
      throw new BuiltValueNullFieldError('CollectionModel', 'poster');
    }
    if (backdrop == null) {
      throw new BuiltValueNullFieldError('CollectionModel', 'backdrop');
    }
  }

  @override
  CollectionModel rebuild(void Function(CollectionModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CollectionModelBuilder toBuilder() =>
      new CollectionModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CollectionModel &&
        id == other.id &&
        parts == other.parts &&
        name == other.name &&
        overview == other.overview &&
        poster == other.poster &&
        backdrop == other.backdrop;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, id.hashCode), parts.hashCode), name.hashCode),
                overview.hashCode),
            poster.hashCode),
        backdrop.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CollectionModel')
          ..add('id', id)
          ..add('parts', parts)
          ..add('name', name)
          ..add('overview', overview)
          ..add('poster', poster)
          ..add('backdrop', backdrop))
        .toString();
  }
}

class CollectionModelBuilder
    implements Builder<CollectionModel, CollectionModelBuilder> {
  _$CollectionModel _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  ListBuilder<BaseMovieResults> _parts;
  ListBuilder<BaseMovieResults> get parts =>
      _$this._parts ??= new ListBuilder<BaseMovieResults>();
  set parts(ListBuilder<BaseMovieResults> parts) => _$this._parts = parts;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _overview;
  String get overview => _$this._overview;
  set overview(String overview) => _$this._overview = overview;

  String _poster;
  String get poster => _$this._poster;
  set poster(String poster) => _$this._poster = poster;

  String _backdrop;
  String get backdrop => _$this._backdrop;
  set backdrop(String backdrop) => _$this._backdrop = backdrop;

  CollectionModelBuilder();

  CollectionModelBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _parts = _$v.parts?.toBuilder();
      _name = _$v.name;
      _overview = _$v.overview;
      _poster = _$v.poster;
      _backdrop = _$v.backdrop;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CollectionModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CollectionModel;
  }

  @override
  void update(void Function(CollectionModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CollectionModel build() {
    _$CollectionModel _$result;
    try {
      _$result = _$v ??
          new _$CollectionModel._(
              id: id,
              parts: parts.build(),
              name: name,
              overview: overview,
              poster: poster,
              backdrop: backdrop);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'parts';
        parts.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CollectionModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
