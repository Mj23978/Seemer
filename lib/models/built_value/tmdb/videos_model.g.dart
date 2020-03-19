// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'videos_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<VideosModel> _$videosModelSerializer = new _$VideosModelSerializer();
Serializer<VideosResults> _$videosResultsSerializer =
    new _$VideosResultsSerializer();

class _$VideosModelSerializer implements StructuredSerializer<VideosModel> {
  @override
  final Iterable<Type> types = const [VideosModel, _$VideosModel];
  @override
  final String wireName = 'VideosModel';

  @override
  Iterable<Object> serialize(Serializers serializers, VideosModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'results',
      serializers.serialize(object.results,
          specifiedType:
              const FullType(BuiltList, const [const FullType(VideosResults)])),
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
  VideosModel deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VideosModelBuilder();

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
        case 'results':
          result.results.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(VideosResults)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$VideosResultsSerializer implements StructuredSerializer<VideosResults> {
  @override
  final Iterable<Type> types = const [VideosResults, _$VideosResults];
  @override
  final String wireName = 'VideosResults';

  @override
  Iterable<Object> serialize(Serializers serializers, VideosResults object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'iso_639_1',
      serializers.serialize(object.language,
          specifiedType: const FullType(String)),
      'iso_3166',
      serializers.serialize(object.country,
          specifiedType: const FullType(String)),
      'key',
      serializers.serialize(object.key, specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'site',
      serializers.serialize(object.site, specifiedType: const FullType(String)),
      'size',
      serializers.serialize(object.size, specifiedType: const FullType(int)),
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  VideosResults deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VideosResultsBuilder();

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
        case 'iso_639_1':
          result.language = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'iso_3166':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'key':
          result.key = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'site':
          result.site = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'size':
          result.size = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$VideosModel extends VideosModel {
  @override
  final int id;
  @override
  final BuiltList<VideosResults> results;

  factory _$VideosModel([void Function(VideosModelBuilder) updates]) =>
      (new VideosModelBuilder()..update(updates)).build();

  _$VideosModel._({this.id, this.results}) : super._() {
    if (results == null) {
      throw new BuiltValueNullFieldError('VideosModel', 'results');
    }
  }

  @override
  VideosModel rebuild(void Function(VideosModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VideosModelBuilder toBuilder() => new VideosModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VideosModel && id == other.id && results == other.results;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), results.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('VideosModel')
          ..add('id', id)
          ..add('results', results))
        .toString();
  }
}

class VideosModelBuilder implements Builder<VideosModel, VideosModelBuilder> {
  _$VideosModel _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  ListBuilder<VideosResults> _results;
  ListBuilder<VideosResults> get results =>
      _$this._results ??= new ListBuilder<VideosResults>();
  set results(ListBuilder<VideosResults> results) => _$this._results = results;

  VideosModelBuilder();

  VideosModelBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _results = _$v.results?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VideosModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$VideosModel;
  }

  @override
  void update(void Function(VideosModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$VideosModel build() {
    _$VideosModel _$result;
    try {
      _$result = _$v ?? new _$VideosModel._(id: id, results: results.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'results';
        results.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'VideosModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$VideosResults extends VideosResults {
  @override
  final int id;
  @override
  final String language;
  @override
  final String country;
  @override
  final String key;
  @override
  final String name;
  @override
  final String site;
  @override
  final int size;
  @override
  final String type;

  factory _$VideosResults([void Function(VideosResultsBuilder) updates]) =>
      (new VideosResultsBuilder()..update(updates)).build();

  _$VideosResults._(
      {this.id,
      this.language,
      this.country,
      this.key,
      this.name,
      this.site,
      this.size,
      this.type})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('VideosResults', 'id');
    }
    if (language == null) {
      throw new BuiltValueNullFieldError('VideosResults', 'language');
    }
    if (country == null) {
      throw new BuiltValueNullFieldError('VideosResults', 'country');
    }
    if (key == null) {
      throw new BuiltValueNullFieldError('VideosResults', 'key');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('VideosResults', 'name');
    }
    if (site == null) {
      throw new BuiltValueNullFieldError('VideosResults', 'site');
    }
    if (size == null) {
      throw new BuiltValueNullFieldError('VideosResults', 'size');
    }
    if (type == null) {
      throw new BuiltValueNullFieldError('VideosResults', 'type');
    }
  }

  @override
  VideosResults rebuild(void Function(VideosResultsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VideosResultsBuilder toBuilder() => new VideosResultsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VideosResults &&
        id == other.id &&
        language == other.language &&
        country == other.country &&
        key == other.key &&
        name == other.name &&
        site == other.site &&
        size == other.size &&
        type == other.type;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, id.hashCode), language.hashCode),
                            country.hashCode),
                        key.hashCode),
                    name.hashCode),
                site.hashCode),
            size.hashCode),
        type.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('VideosResults')
          ..add('id', id)
          ..add('language', language)
          ..add('country', country)
          ..add('key', key)
          ..add('name', name)
          ..add('site', site)
          ..add('size', size)
          ..add('type', type))
        .toString();
  }
}

class VideosResultsBuilder
    implements Builder<VideosResults, VideosResultsBuilder> {
  _$VideosResults _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _language;
  String get language => _$this._language;
  set language(String language) => _$this._language = language;

  String _country;
  String get country => _$this._country;
  set country(String country) => _$this._country = country;

  String _key;
  String get key => _$this._key;
  set key(String key) => _$this._key = key;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _site;
  String get site => _$this._site;
  set site(String site) => _$this._site = site;

  int _size;
  int get size => _$this._size;
  set size(int size) => _$this._size = size;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  VideosResultsBuilder();

  VideosResultsBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _language = _$v.language;
      _country = _$v.country;
      _key = _$v.key;
      _name = _$v.name;
      _site = _$v.site;
      _size = _$v.size;
      _type = _$v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VideosResults other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$VideosResults;
  }

  @override
  void update(void Function(VideosResultsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$VideosResults build() {
    final _$result = _$v ??
        new _$VideosResults._(
            id: id,
            language: language,
            country: country,
            key: key,
            name: name,
            site: site,
            size: size,
            type: type);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
