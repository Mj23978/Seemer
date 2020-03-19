// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'release_dates_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ReleaseDatesModel> _$releaseDatesModelSerializer =
    new _$ReleaseDatesModelSerializer();
Serializer<ReleaseDatesResults> _$releaseDatesResultsSerializer =
    new _$ReleaseDatesResultsSerializer();

class _$ReleaseDatesModelSerializer
    implements StructuredSerializer<ReleaseDatesModel> {
  @override
  final Iterable<Type> types = const [ReleaseDatesModel, _$ReleaseDatesModel];
  @override
  final String wireName = 'ReleaseDatesModel';

  @override
  Iterable<Object> serialize(Serializers serializers, ReleaseDatesModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'results',
      serializers.serialize(object.results,
          specifiedType: const FullType(
              BuiltList, const [const FullType(ReleaseDatesResults)])),
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
  ReleaseDatesModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReleaseDatesModelBuilder();

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
                      BuiltList, const [const FullType(ReleaseDatesResults)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$ReleaseDatesResultsSerializer
    implements StructuredSerializer<ReleaseDatesResults> {
  @override
  final Iterable<Type> types = const [
    ReleaseDatesResults,
    _$ReleaseDatesResults
  ];
  @override
  final String wireName = 'ReleaseDatesResults';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ReleaseDatesResults object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'iso_3166_1',
      serializers.serialize(object.country,
          specifiedType: const FullType(String)),
      'release_dates',
      serializers.serialize(object.releaseDates,
          specifiedType:
              const FullType(BuiltList, const [const FullType(ReleaseModel)])),
    ];

    return result;
  }

  @override
  ReleaseDatesResults deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReleaseDatesResultsBuilder();

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
        case 'release_dates':
          result.releaseDates.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ReleaseModel)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$ReleaseDatesModel extends ReleaseDatesModel {
  @override
  final int id;
  @override
  final BuiltList<ReleaseDatesResults> results;

  factory _$ReleaseDatesModel(
          [void Function(ReleaseDatesModelBuilder) updates]) =>
      (new ReleaseDatesModelBuilder()..update(updates)).build();

  _$ReleaseDatesModel._({this.id, this.results}) : super._() {
    if (results == null) {
      throw new BuiltValueNullFieldError('ReleaseDatesModel', 'results');
    }
  }

  @override
  ReleaseDatesModel rebuild(void Function(ReleaseDatesModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReleaseDatesModelBuilder toBuilder() =>
      new ReleaseDatesModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReleaseDatesModel &&
        id == other.id &&
        results == other.results;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), results.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ReleaseDatesModel')
          ..add('id', id)
          ..add('results', results))
        .toString();
  }
}

class ReleaseDatesModelBuilder
    implements Builder<ReleaseDatesModel, ReleaseDatesModelBuilder> {
  _$ReleaseDatesModel _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  ListBuilder<ReleaseDatesResults> _results;
  ListBuilder<ReleaseDatesResults> get results =>
      _$this._results ??= new ListBuilder<ReleaseDatesResults>();
  set results(ListBuilder<ReleaseDatesResults> results) =>
      _$this._results = results;

  ReleaseDatesModelBuilder();

  ReleaseDatesModelBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _results = _$v.results?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReleaseDatesModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ReleaseDatesModel;
  }

  @override
  void update(void Function(ReleaseDatesModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ReleaseDatesModel build() {
    _$ReleaseDatesModel _$result;
    try {
      _$result =
          _$v ?? new _$ReleaseDatesModel._(id: id, results: results.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'results';
        results.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ReleaseDatesModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ReleaseDatesResults extends ReleaseDatesResults {
  @override
  final String country;
  @override
  final BuiltList<ReleaseModel> releaseDates;

  factory _$ReleaseDatesResults(
          [void Function(ReleaseDatesResultsBuilder) updates]) =>
      (new ReleaseDatesResultsBuilder()..update(updates)).build();

  _$ReleaseDatesResults._({this.country, this.releaseDates}) : super._() {
    if (country == null) {
      throw new BuiltValueNullFieldError('ReleaseDatesResults', 'country');
    }
    if (releaseDates == null) {
      throw new BuiltValueNullFieldError('ReleaseDatesResults', 'releaseDates');
    }
  }

  @override
  ReleaseDatesResults rebuild(
          void Function(ReleaseDatesResultsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReleaseDatesResultsBuilder toBuilder() =>
      new ReleaseDatesResultsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReleaseDatesResults &&
        country == other.country &&
        releaseDates == other.releaseDates;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, country.hashCode), releaseDates.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ReleaseDatesResults')
          ..add('country', country)
          ..add('releaseDates', releaseDates))
        .toString();
  }
}

class ReleaseDatesResultsBuilder
    implements Builder<ReleaseDatesResults, ReleaseDatesResultsBuilder> {
  _$ReleaseDatesResults _$v;

  String _country;
  String get country => _$this._country;
  set country(String country) => _$this._country = country;

  ListBuilder<ReleaseModel> _releaseDates;
  ListBuilder<ReleaseModel> get releaseDates =>
      _$this._releaseDates ??= new ListBuilder<ReleaseModel>();
  set releaseDates(ListBuilder<ReleaseModel> releaseDates) =>
      _$this._releaseDates = releaseDates;

  ReleaseDatesResultsBuilder();

  ReleaseDatesResultsBuilder get _$this {
    if (_$v != null) {
      _country = _$v.country;
      _releaseDates = _$v.releaseDates?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReleaseDatesResults other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ReleaseDatesResults;
  }

  @override
  void update(void Function(ReleaseDatesResultsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ReleaseDatesResults build() {
    _$ReleaseDatesResults _$result;
    try {
      _$result = _$v ??
          new _$ReleaseDatesResults._(
              country: country, releaseDates: releaseDates.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'releaseDates';
        releaseDates.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ReleaseDatesResults', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
