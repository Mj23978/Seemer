// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alternative_titles_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AlternativeTitlesModel> _$alternativeTitlesModelSerializer =
    new _$AlternativeTitlesModelSerializer();
Serializer<AlternativeTitlesResults> _$alternativeTitlesResultsSerializer =
    new _$AlternativeTitlesResultsSerializer();

class _$AlternativeTitlesModelSerializer
    implements StructuredSerializer<AlternativeTitlesModel> {
  @override
  final Iterable<Type> types = const [
    AlternativeTitlesModel,
    _$AlternativeTitlesModel
  ];
  @override
  final String wireName = 'AlternativeTitlesModel';

  @override
  Iterable<Object> serialize(
      Serializers serializers, AlternativeTitlesModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'results',
      serializers.serialize(object.results,
          specifiedType: const FullType(
              BuiltList, const [const FullType(AlternativeTitlesResults)])),
    ];

    return result;
  }

  @override
  AlternativeTitlesModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AlternativeTitlesModelBuilder();

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
              specifiedType: const FullType(BuiltList, const [
                const FullType(AlternativeTitlesResults)
              ])) as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$AlternativeTitlesResultsSerializer
    implements StructuredSerializer<AlternativeTitlesResults> {
  @override
  final Iterable<Type> types = const [
    AlternativeTitlesResults,
    _$AlternativeTitlesResults
  ];
  @override
  final String wireName = 'AlternativeTitlesResults';

  @override
  Iterable<Object> serialize(
      Serializers serializers, AlternativeTitlesResults object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'iso_3166_1',
      serializers.serialize(object.countryCode,
          specifiedType: const FullType(String)),
    ];
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  AlternativeTitlesResults deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AlternativeTitlesResultsBuilder();

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
        case 'iso_3166_1':
          result.countryCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$AlternativeTitlesModel extends AlternativeTitlesModel {
  @override
  final int id;
  @override
  final BuiltList<AlternativeTitlesResults> results;

  factory _$AlternativeTitlesModel(
          [void Function(AlternativeTitlesModelBuilder) updates]) =>
      (new AlternativeTitlesModelBuilder()..update(updates)).build();

  _$AlternativeTitlesModel._({this.id, this.results}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('AlternativeTitlesModel', 'id');
    }
    if (results == null) {
      throw new BuiltValueNullFieldError('AlternativeTitlesModel', 'results');
    }
  }

  @override
  AlternativeTitlesModel rebuild(
          void Function(AlternativeTitlesModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AlternativeTitlesModelBuilder toBuilder() =>
      new AlternativeTitlesModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AlternativeTitlesModel &&
        id == other.id &&
        results == other.results;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), results.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AlternativeTitlesModel')
          ..add('id', id)
          ..add('results', results))
        .toString();
  }
}

class AlternativeTitlesModelBuilder
    implements Builder<AlternativeTitlesModel, AlternativeTitlesModelBuilder> {
  _$AlternativeTitlesModel _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  ListBuilder<AlternativeTitlesResults> _results;
  ListBuilder<AlternativeTitlesResults> get results =>
      _$this._results ??= new ListBuilder<AlternativeTitlesResults>();
  set results(ListBuilder<AlternativeTitlesResults> results) =>
      _$this._results = results;

  AlternativeTitlesModelBuilder();

  AlternativeTitlesModelBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _results = _$v.results?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AlternativeTitlesModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AlternativeTitlesModel;
  }

  @override
  void update(void Function(AlternativeTitlesModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AlternativeTitlesModel build() {
    _$AlternativeTitlesModel _$result;
    try {
      _$result = _$v ??
          new _$AlternativeTitlesModel._(id: id, results: results.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'results';
        results.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AlternativeTitlesModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$AlternativeTitlesResults extends AlternativeTitlesResults {
  @override
  final String title;
  @override
  final String countryCode;
  @override
  final String type;

  factory _$AlternativeTitlesResults(
          [void Function(AlternativeTitlesResultsBuilder) updates]) =>
      (new AlternativeTitlesResultsBuilder()..update(updates)).build();

  _$AlternativeTitlesResults._({this.title, this.countryCode, this.type})
      : super._() {
    if (title == null) {
      throw new BuiltValueNullFieldError('AlternativeTitlesResults', 'title');
    }
    if (countryCode == null) {
      throw new BuiltValueNullFieldError(
          'AlternativeTitlesResults', 'countryCode');
    }
  }

  @override
  AlternativeTitlesResults rebuild(
          void Function(AlternativeTitlesResultsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AlternativeTitlesResultsBuilder toBuilder() =>
      new AlternativeTitlesResultsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AlternativeTitlesResults &&
        title == other.title &&
        countryCode == other.countryCode &&
        type == other.type;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, title.hashCode), countryCode.hashCode), type.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AlternativeTitlesResults')
          ..add('title', title)
          ..add('countryCode', countryCode)
          ..add('type', type))
        .toString();
  }
}

class AlternativeTitlesResultsBuilder
    implements
        Builder<AlternativeTitlesResults, AlternativeTitlesResultsBuilder> {
  _$AlternativeTitlesResults _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _countryCode;
  String get countryCode => _$this._countryCode;
  set countryCode(String countryCode) => _$this._countryCode = countryCode;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  AlternativeTitlesResultsBuilder();

  AlternativeTitlesResultsBuilder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _countryCode = _$v.countryCode;
      _type = _$v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AlternativeTitlesResults other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AlternativeTitlesResults;
  }

  @override
  void update(void Function(AlternativeTitlesResultsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AlternativeTitlesResults build() {
    final _$result = _$v ??
        new _$AlternativeTitlesResults._(
            title: title, countryCode: countryCode, type: type);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
