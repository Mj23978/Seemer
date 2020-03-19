// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_lists_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MovieListsModel> _$movieListsModelSerializer =
    new _$MovieListsModelSerializer();
Serializer<MovieListsResults> _$movieListsResultsSerializer =
    new _$MovieListsResultsSerializer();

class _$MovieListsModelSerializer
    implements StructuredSerializer<MovieListsModel> {
  @override
  final Iterable<Type> types = const [MovieListsModel, _$MovieListsModel];
  @override
  final String wireName = 'MovieListsModel';

  @override
  Iterable<Object> serialize(Serializers serializers, MovieListsModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'results',
      serializers.serialize(object.results,
          specifiedType: const FullType(
              BuiltList, const [const FullType(MovieListsResults)])),
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
  MovieListsModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MovieListsModelBuilder();

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
                      BuiltList, const [const FullType(MovieListsResults)]))
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

class _$MovieListsResultsSerializer
    implements StructuredSerializer<MovieListsResults> {
  @override
  final Iterable<Type> types = const [MovieListsResults, _$MovieListsResults];
  @override
  final String wireName = 'MovieListsResults';

  @override
  Iterable<Object> serialize(Serializers serializers, MovieListsResults object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'favorite_count',
      serializers.serialize(object.favoriteCount,
          specifiedType: const FullType(int)),
      'item_count',
      serializers.serialize(object.itemCount,
          specifiedType: const FullType(int)),
      'iso_639_1',
      serializers.serialize(object.language,
          specifiedType: const FullType(String)),
      'list_type',
      serializers.serialize(object.listType,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];
    if (object.posterPath != null) {
      result
        ..add('poster_path')
        ..add(serializers.serialize(object.posterPath,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  MovieListsResults deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MovieListsResultsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'poster_path':
          result.posterPath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'favorite_count':
          result.favoriteCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'item_count':
          result.itemCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'iso_639_1':
          result.language = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'list_type':
          result.listType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$MovieListsModel extends MovieListsModel {
  @override
  final int page;
  @override
  final int id;
  @override
  final BuiltList<MovieListsResults> results;
  @override
  final int totalResults;
  @override
  final int totalPages;

  factory _$MovieListsModel([void Function(MovieListsModelBuilder) updates]) =>
      (new MovieListsModelBuilder()..update(updates)).build();

  _$MovieListsModel._(
      {this.page, this.id, this.results, this.totalResults, this.totalPages})
      : super._() {
    if (results == null) {
      throw new BuiltValueNullFieldError('MovieListsModel', 'results');
    }
  }

  @override
  MovieListsModel rebuild(void Function(MovieListsModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MovieListsModelBuilder toBuilder() =>
      new MovieListsModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MovieListsModel &&
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
    return (newBuiltValueToStringHelper('MovieListsModel')
          ..add('page', page)
          ..add('id', id)
          ..add('results', results)
          ..add('totalResults', totalResults)
          ..add('totalPages', totalPages))
        .toString();
  }
}

class MovieListsModelBuilder
    implements Builder<MovieListsModel, MovieListsModelBuilder> {
  _$MovieListsModel _$v;

  int _page;
  int get page => _$this._page;
  set page(int page) => _$this._page = page;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  ListBuilder<MovieListsResults> _results;
  ListBuilder<MovieListsResults> get results =>
      _$this._results ??= new ListBuilder<MovieListsResults>();
  set results(ListBuilder<MovieListsResults> results) =>
      _$this._results = results;

  int _totalResults;
  int get totalResults => _$this._totalResults;
  set totalResults(int totalResults) => _$this._totalResults = totalResults;

  int _totalPages;
  int get totalPages => _$this._totalPages;
  set totalPages(int totalPages) => _$this._totalPages = totalPages;

  MovieListsModelBuilder();

  MovieListsModelBuilder get _$this {
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
  void replace(MovieListsModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MovieListsModel;
  }

  @override
  void update(void Function(MovieListsModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MovieListsModel build() {
    _$MovieListsModel _$result;
    try {
      _$result = _$v ??
          new _$MovieListsModel._(
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
            'MovieListsModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$MovieListsResults extends MovieListsResults {
  @override
  final String posterPath;
  @override
  final int id;
  @override
  final String description;
  @override
  final int favoriteCount;
  @override
  final int itemCount;
  @override
  final String language;
  @override
  final String listType;
  @override
  final String name;

  factory _$MovieListsResults(
          [void Function(MovieListsResultsBuilder) updates]) =>
      (new MovieListsResultsBuilder()..update(updates)).build();

  _$MovieListsResults._(
      {this.posterPath,
      this.id,
      this.description,
      this.favoriteCount,
      this.itemCount,
      this.language,
      this.listType,
      this.name})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('MovieListsResults', 'id');
    }
    if (description == null) {
      throw new BuiltValueNullFieldError('MovieListsResults', 'description');
    }
    if (favoriteCount == null) {
      throw new BuiltValueNullFieldError('MovieListsResults', 'favoriteCount');
    }
    if (itemCount == null) {
      throw new BuiltValueNullFieldError('MovieListsResults', 'itemCount');
    }
    if (language == null) {
      throw new BuiltValueNullFieldError('MovieListsResults', 'language');
    }
    if (listType == null) {
      throw new BuiltValueNullFieldError('MovieListsResults', 'listType');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('MovieListsResults', 'name');
    }
  }

  @override
  MovieListsResults rebuild(void Function(MovieListsResultsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MovieListsResultsBuilder toBuilder() =>
      new MovieListsResultsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MovieListsResults &&
        posterPath == other.posterPath &&
        id == other.id &&
        description == other.description &&
        favoriteCount == other.favoriteCount &&
        itemCount == other.itemCount &&
        language == other.language &&
        listType == other.listType &&
        name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, posterPath.hashCode), id.hashCode),
                            description.hashCode),
                        favoriteCount.hashCode),
                    itemCount.hashCode),
                language.hashCode),
            listType.hashCode),
        name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MovieListsResults')
          ..add('posterPath', posterPath)
          ..add('id', id)
          ..add('description', description)
          ..add('favoriteCount', favoriteCount)
          ..add('itemCount', itemCount)
          ..add('language', language)
          ..add('listType', listType)
          ..add('name', name))
        .toString();
  }
}

class MovieListsResultsBuilder
    implements Builder<MovieListsResults, MovieListsResultsBuilder> {
  _$MovieListsResults _$v;

  String _posterPath;
  String get posterPath => _$this._posterPath;
  set posterPath(String posterPath) => _$this._posterPath = posterPath;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  int _favoriteCount;
  int get favoriteCount => _$this._favoriteCount;
  set favoriteCount(int favoriteCount) => _$this._favoriteCount = favoriteCount;

  int _itemCount;
  int get itemCount => _$this._itemCount;
  set itemCount(int itemCount) => _$this._itemCount = itemCount;

  String _language;
  String get language => _$this._language;
  set language(String language) => _$this._language = language;

  String _listType;
  String get listType => _$this._listType;
  set listType(String listType) => _$this._listType = listType;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  MovieListsResultsBuilder();

  MovieListsResultsBuilder get _$this {
    if (_$v != null) {
      _posterPath = _$v.posterPath;
      _id = _$v.id;
      _description = _$v.description;
      _favoriteCount = _$v.favoriteCount;
      _itemCount = _$v.itemCount;
      _language = _$v.language;
      _listType = _$v.listType;
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MovieListsResults other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MovieListsResults;
  }

  @override
  void update(void Function(MovieListsResultsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MovieListsResults build() {
    final _$result = _$v ??
        new _$MovieListsResults._(
            posterPath: posterPath,
            id: id,
            description: description,
            favoriteCount: favoriteCount,
            itemCount: itemCount,
            language: language,
            listType: listType,
            name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
