// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'keyword_movie_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<KeywordMovieModel> _$keywordMovieModelSerializer =
    new _$KeywordMovieModelSerializer();

class _$KeywordMovieModelSerializer
    implements StructuredSerializer<KeywordMovieModel> {
  @override
  final Iterable<Type> types = const [KeywordMovieModel, _$KeywordMovieModel];
  @override
  final String wireName = 'KeywordMovieModel';

  @override
  Iterable<Object> serialize(Serializers serializers, KeywordMovieModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'results',
      serializers.serialize(object.results,
          specifiedType: const FullType(
              BuiltList, const [const FullType(BaseMovieResults)])),
    ];
    if (object.page != null) {
      result
        ..add('page')
        ..add(serializers.serialize(object.page,
            specifiedType: const FullType(int)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.totalResults != null) {
      result
        ..add('total_results')
        ..add(serializers.serialize(object.totalResults,
            specifiedType: const FullType(int)));
    }
    if (object.totalPages != null) {
      result
        ..add('total_pages')
        ..add(serializers.serialize(object.totalPages,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  KeywordMovieModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new KeywordMovieModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'page':
          result.page = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'results':
          result.results.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(BaseMovieResults)]))
              as BuiltList<dynamic>);
          break;
        case 'total_results':
          result.totalResults = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'total_pages':
          result.totalPages = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$KeywordMovieModel extends KeywordMovieModel {
  @override
  final int page;
  @override
  final int id;
  @override
  final BuiltList<BaseMovieResults> results;
  @override
  final int totalResults;
  @override
  final int totalPages;

  factory _$KeywordMovieModel(
          [void Function(KeywordMovieModelBuilder) updates]) =>
      (new KeywordMovieModelBuilder()..update(updates)).build();

  _$KeywordMovieModel._(
      {this.page, this.id, this.results, this.totalResults, this.totalPages})
      : super._() {
    if (results == null) {
      throw new BuiltValueNullFieldError('KeywordMovieModel', 'results');
    }
  }

  @override
  KeywordMovieModel rebuild(void Function(KeywordMovieModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  KeywordMovieModelBuilder toBuilder() =>
      new KeywordMovieModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is KeywordMovieModel &&
        page == other.page &&
        id == other.id &&
        results == other.results &&
        totalResults == other.totalResults &&
        totalPages == other.totalPages;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, page.hashCode), id.hashCode), results.hashCode),
            totalResults.hashCode),
        totalPages.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('KeywordMovieModel')
          ..add('page', page)
          ..add('id', id)
          ..add('results', results)
          ..add('totalResults', totalResults)
          ..add('totalPages', totalPages))
        .toString();
  }
}

class KeywordMovieModelBuilder
    implements Builder<KeywordMovieModel, KeywordMovieModelBuilder> {
  _$KeywordMovieModel _$v;

  int _page;
  int get page => _$this._page;
  set page(int page) => _$this._page = page;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  ListBuilder<BaseMovieResults> _results;
  ListBuilder<BaseMovieResults> get results =>
      _$this._results ??= new ListBuilder<BaseMovieResults>();
  set results(ListBuilder<BaseMovieResults> results) =>
      _$this._results = results;

  int _totalResults;
  int get totalResults => _$this._totalResults;
  set totalResults(int totalResults) => _$this._totalResults = totalResults;

  int _totalPages;
  int get totalPages => _$this._totalPages;
  set totalPages(int totalPages) => _$this._totalPages = totalPages;

  KeywordMovieModelBuilder();

  KeywordMovieModelBuilder get _$this {
    if (_$v != null) {
      _page = _$v.page;
      _id = _$v.id;
      _results = _$v.results?.toBuilder();
      _totalResults = _$v.totalResults;
      _totalPages = _$v.totalPages;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(KeywordMovieModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$KeywordMovieModel;
  }

  @override
  void update(void Function(KeywordMovieModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$KeywordMovieModel build() {
    _$KeywordMovieModel _$result;
    try {
      _$result = _$v ??
          new _$KeywordMovieModel._(
              page: page,
              id: id,
              results: results.build(),
              totalResults: totalResults,
              totalPages: totalPages);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'results';
        results.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'KeywordMovieModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
