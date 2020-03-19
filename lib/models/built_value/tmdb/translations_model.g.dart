// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'translations_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TranslationsModel> _$translationsModelSerializer =
    new _$TranslationsModelSerializer();
Serializer<Translations> _$translationsSerializer =
    new _$TranslationsSerializer();
Serializer<TranslationsData> _$translationsDataSerializer =
    new _$TranslationsDataSerializer();

class _$TranslationsModelSerializer
    implements StructuredSerializer<TranslationsModel> {
  @override
  final Iterable<Type> types = const [TranslationsModel, _$TranslationsModel];
  @override
  final String wireName = 'TranslationsModel';

  @override
  Iterable<Object> serialize(Serializers serializers, TranslationsModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'results',
      serializers.serialize(object.results,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Translations)])),
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
  TranslationsModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TranslationsModelBuilder();

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
                      BuiltList, const [const FullType(Translations)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$TranslationsSerializer implements StructuredSerializer<Translations> {
  @override
  final Iterable<Type> types = const [Translations, _$Translations];
  @override
  final String wireName = 'Translations';

  @override
  Iterable<Object> serialize(Serializers serializers, Translations object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'iso_3166_1',
      serializers.serialize(object.country,
          specifiedType: const FullType(String)),
      'iso_639_1',
      serializers.serialize(object.language,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'english_name',
      serializers.serialize(object.englishName,
          specifiedType: const FullType(String)),
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(TranslationsData)),
    ];

    return result;
  }

  @override
  Translations deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TranslationsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'iso_3166_1':
          result.country = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'iso_639_1':
          result.language = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'english_name':
          result.englishName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(TranslationsData))
              as TranslationsData);
          break;
      }
    }

    return result.build();
  }
}

class _$TranslationsDataSerializer
    implements StructuredSerializer<TranslationsData> {
  @override
  final Iterable<Type> types = const [TranslationsData, _$TranslationsData];
  @override
  final String wireName = 'TranslationsData';

  @override
  Iterable<Object> serialize(Serializers serializers, TranslationsData object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'overview',
      serializers.serialize(object.overview,
          specifiedType: const FullType(String)),
      'homepage',
      serializers.serialize(object.homepage,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  TranslationsData deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TranslationsDataBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'overview':
          result.overview = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'homepage':
          result.homepage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$TranslationsModel extends TranslationsModel {
  @override
  final int id;
  @override
  final BuiltList<Translations> results;

  factory _$TranslationsModel(
          [void Function(TranslationsModelBuilder) updates]) =>
      (new TranslationsModelBuilder()..update(updates)).build();

  _$TranslationsModel._({this.id, this.results}) : super._() {
    if (results == null) {
      throw new BuiltValueNullFieldError('TranslationsModel', 'results');
    }
  }

  @override
  TranslationsModel rebuild(void Function(TranslationsModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TranslationsModelBuilder toBuilder() =>
      new TranslationsModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TranslationsModel &&
        id == other.id &&
        results == other.results;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), results.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TranslationsModel')
          ..add('id', id)
          ..add('results', results))
        .toString();
  }
}

class TranslationsModelBuilder
    implements Builder<TranslationsModel, TranslationsModelBuilder> {
  _$TranslationsModel _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  ListBuilder<Translations> _results;
  ListBuilder<Translations> get results =>
      _$this._results ??= new ListBuilder<Translations>();
  set results(ListBuilder<Translations> results) => _$this._results = results;

  TranslationsModelBuilder();

  TranslationsModelBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _results = _$v.results?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TranslationsModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TranslationsModel;
  }

  @override
  void update(void Function(TranslationsModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TranslationsModel build() {
    _$TranslationsModel _$result;
    try {
      _$result =
          _$v ?? new _$TranslationsModel._(id: id, results: results.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'results';
        results.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TranslationsModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Translations extends Translations {
  @override
  final String country;
  @override
  final String language;
  @override
  final String name;
  @override
  final String englishName;
  @override
  final TranslationsData data;

  factory _$Translations([void Function(TranslationsBuilder) updates]) =>
      (new TranslationsBuilder()..update(updates)).build();

  _$Translations._(
      {this.country, this.language, this.name, this.englishName, this.data})
      : super._() {
    if (country == null) {
      throw new BuiltValueNullFieldError('Translations', 'country');
    }
    if (language == null) {
      throw new BuiltValueNullFieldError('Translations', 'language');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('Translations', 'name');
    }
    if (englishName == null) {
      throw new BuiltValueNullFieldError('Translations', 'englishName');
    }
    if (data == null) {
      throw new BuiltValueNullFieldError('Translations', 'data');
    }
  }

  @override
  Translations rebuild(void Function(TranslationsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TranslationsBuilder toBuilder() => new TranslationsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Translations &&
        country == other.country &&
        language == other.language &&
        name == other.name &&
        englishName == other.englishName &&
        data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, country.hashCode), language.hashCode),
                name.hashCode),
            englishName.hashCode),
        data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Translations')
          ..add('country', country)
          ..add('language', language)
          ..add('name', name)
          ..add('englishName', englishName)
          ..add('data', data))
        .toString();
  }
}

class TranslationsBuilder
    implements Builder<Translations, TranslationsBuilder> {
  _$Translations _$v;

  String _country;
  String get country => _$this._country;
  set country(String country) => _$this._country = country;

  String _language;
  String get language => _$this._language;
  set language(String language) => _$this._language = language;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _englishName;
  String get englishName => _$this._englishName;
  set englishName(String englishName) => _$this._englishName = englishName;

  TranslationsDataBuilder _data;
  TranslationsDataBuilder get data =>
      _$this._data ??= new TranslationsDataBuilder();
  set data(TranslationsDataBuilder data) => _$this._data = data;

  TranslationsBuilder();

  TranslationsBuilder get _$this {
    if (_$v != null) {
      _country = _$v.country;
      _language = _$v.language;
      _name = _$v.name;
      _englishName = _$v.englishName;
      _data = _$v.data?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Translations other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Translations;
  }

  @override
  void update(void Function(TranslationsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Translations build() {
    _$Translations _$result;
    try {
      _$result = _$v ??
          new _$Translations._(
              country: country,
              language: language,
              name: name,
              englishName: englishName,
              data: data.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Translations', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$TranslationsData extends TranslationsData {
  @override
  final String title;
  @override
  final String overview;
  @override
  final String homepage;

  factory _$TranslationsData(
          [void Function(TranslationsDataBuilder) updates]) =>
      (new TranslationsDataBuilder()..update(updates)).build();

  _$TranslationsData._({this.title, this.overview, this.homepage}) : super._() {
    if (title == null) {
      throw new BuiltValueNullFieldError('TranslationsData', 'title');
    }
    if (overview == null) {
      throw new BuiltValueNullFieldError('TranslationsData', 'overview');
    }
    if (homepage == null) {
      throw new BuiltValueNullFieldError('TranslationsData', 'homepage');
    }
  }

  @override
  TranslationsData rebuild(void Function(TranslationsDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TranslationsDataBuilder toBuilder() =>
      new TranslationsDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TranslationsData &&
        title == other.title &&
        overview == other.overview &&
        homepage == other.homepage;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, title.hashCode), overview.hashCode), homepage.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TranslationsData')
          ..add('title', title)
          ..add('overview', overview)
          ..add('homepage', homepage))
        .toString();
  }
}

class TranslationsDataBuilder
    implements Builder<TranslationsData, TranslationsDataBuilder> {
  _$TranslationsData _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _overview;
  String get overview => _$this._overview;
  set overview(String overview) => _$this._overview = overview;

  String _homepage;
  String get homepage => _$this._homepage;
  set homepage(String homepage) => _$this._homepage = homepage;

  TranslationsDataBuilder();

  TranslationsDataBuilder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _overview = _$v.overview;
      _homepage = _$v.homepage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TranslationsData other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TranslationsData;
  }

  @override
  void update(void Function(TranslationsDataBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TranslationsData build() {
    final _$result = _$v ??
        new _$TranslationsData._(
            title: title, overview: overview, homepage: homepage);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
