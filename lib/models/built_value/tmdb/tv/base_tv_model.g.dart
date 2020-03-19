// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_tv_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BaseTvModel> _$baseTvModelSerializer = new _$BaseTvModelSerializer();
Serializer<BaseTvResults> _$baseTvResultsSerializer =
    new _$BaseTvResultsSerializer();

class _$BaseTvModelSerializer implements StructuredSerializer<BaseTvModel> {
  @override
  final Iterable<Type> types = const [BaseTvModel, _$BaseTvModel];
  @override
  final String wireName = 'BaseTvModel';

  @override
  Iterable<Object> serialize(Serializers serializers, BaseTvModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'results',
      serializers.serialize(object.results,
          specifiedType:
              const FullType(BuiltList, const [const FullType(BaseTvResults)])),
    ];
    if (object.page != null) {
      result
        ..add('page')
        ..add(serializers.serialize(object.page,
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
  BaseTvModel deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BaseTvModelBuilder();

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
        case 'results':
          result.results.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(BaseTvResults)]))
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

class _$BaseTvResultsSerializer implements StructuredSerializer<BaseTvResults> {
  @override
  final Iterable<Type> types = const [BaseTvResults, _$BaseTvResults];
  @override
  final String wireName = 'BaseTvResults';

  @override
  Iterable<Object> serialize(Serializers serializers, BaseTvResults object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'popularity',
      serializers.serialize(object.popularity,
          specifiedType: const FullType(double)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'vote_average',
      serializers.serialize(object.voteAverage,
          specifiedType: const FullType(double)),
      'overview',
      serializers.serialize(object.overview,
          specifiedType: const FullType(String)),
      'first_air_date',
      serializers.serialize(object.firstAirDate,
          specifiedType: const FullType(String)),
      'origin_country',
      serializers.serialize(object.originCountry,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'genre_ids',
      serializers.serialize(object.genreIDs,
          specifiedType:
              const FullType(BuiltList, const [const FullType(int)])),
      'original_language',
      serializers.serialize(object.originalLanguage,
          specifiedType: const FullType(String)),
      'vote_count',
      serializers.serialize(object.voteCount,
          specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'original_name',
      serializers.serialize(object.originalName,
          specifiedType: const FullType(String)),
    ];
    if (object.posterPath != null) {
      result
        ..add('poster_path')
        ..add(serializers.serialize(object.posterPath,
            specifiedType: const FullType(String)));
    }
    if (object.backdropPath != null) {
      result
        ..add('backdrop_path')
        ..add(serializers.serialize(object.backdropPath,
            specifiedType: const FullType(String)));
    }
    if (object.rating != null) {
      result
        ..add('rating')
        ..add(serializers.serialize(object.rating,
            specifiedType: const FullType(int)));
    }
    if (object.creditId != null) {
      result
        ..add('credit_id')
        ..add(serializers.serialize(object.creditId,
            specifiedType: const FullType(String)));
    }
    if (object.character != null) {
      result
        ..add('character')
        ..add(serializers.serialize(object.character,
            specifiedType: const FullType(String)));
    }
    if (object.department != null) {
      result
        ..add('department')
        ..add(serializers.serialize(object.department,
            specifiedType: const FullType(String)));
    }
    if (object.job != null) {
      result
        ..add('job')
        ..add(serializers.serialize(object.job,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  BaseTvResults deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BaseTvResultsBuilder();

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
        case 'popularity':
          result.popularity = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'backdrop_path':
          result.backdropPath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'vote_average':
          result.voteAverage = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'overview':
          result.overview = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'first_air_date':
          result.firstAirDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'origin_country':
          result.originCountry.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<dynamic>);
          break;
        case 'genre_ids':
          result.genreIDs.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))
              as BuiltList<dynamic>);
          break;
        case 'original_language':
          result.originalLanguage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'vote_count':
          result.voteCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'original_name':
          result.originalName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'credit_id':
          result.creditId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'character':
          result.character = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'department':
          result.department = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'job':
          result.job = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BaseTvModel extends BaseTvModel {
  @override
  final int page;
  @override
  final BuiltList<BaseTvResults> results;
  @override
  final int totalResults;
  @override
  final int totalPages;

  factory _$BaseTvModel([void Function(BaseTvModelBuilder) updates]) =>
      (new BaseTvModelBuilder()..update(updates)).build();

  _$BaseTvModel._({this.page, this.results, this.totalResults, this.totalPages})
      : super._() {
    if (results == null) {
      throw new BuiltValueNullFieldError('BaseTvModel', 'results');
    }
  }

  @override
  BaseTvModel rebuild(void Function(BaseTvModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BaseTvModelBuilder toBuilder() => new BaseTvModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BaseTvModel &&
        page == other.page &&
        results == other.results &&
        totalResults == other.totalResults &&
        totalPages == other.totalPages;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, page.hashCode), results.hashCode),
            totalResults.hashCode),
        totalPages.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BaseTvModel')
          ..add('page', page)
          ..add('results', results)
          ..add('totalResults', totalResults)
          ..add('totalPages', totalPages))
        .toString();
  }
}

class BaseTvModelBuilder implements Builder<BaseTvModel, BaseTvModelBuilder> {
  _$BaseTvModel _$v;

  int _page;
  int get page => _$this._page;
  set page(int page) => _$this._page = page;

  ListBuilder<BaseTvResults> _results;
  ListBuilder<BaseTvResults> get results =>
      _$this._results ??= new ListBuilder<BaseTvResults>();
  set results(ListBuilder<BaseTvResults> results) => _$this._results = results;

  int _totalResults;
  int get totalResults => _$this._totalResults;
  set totalResults(int totalResults) => _$this._totalResults = totalResults;

  int _totalPages;
  int get totalPages => _$this._totalPages;
  set totalPages(int totalPages) => _$this._totalPages = totalPages;

  BaseTvModelBuilder();

  BaseTvModelBuilder get _$this {
    if (_$v != null) {
      _page = _$v.page;
      _results = _$v.results?.toBuilder();
      _totalResults = _$v.totalResults;
      _totalPages = _$v.totalPages;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BaseTvModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BaseTvModel;
  }

  @override
  void update(void Function(BaseTvModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BaseTvModel build() {
    _$BaseTvModel _$result;
    try {
      _$result = _$v ??
          new _$BaseTvModel._(
              page: page,
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
            'BaseTvModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$BaseTvResults extends BaseTvResults {
  @override
  final String posterPath;
  @override
  final double popularity;
  @override
  final int id;
  @override
  final String backdropPath;
  @override
  final double voteAverage;
  @override
  final String overview;
  @override
  final String firstAirDate;
  @override
  final BuiltList<String> originCountry;
  @override
  final BuiltList<int> genreIDs;
  @override
  final String originalLanguage;
  @override
  final int voteCount;
  @override
  final String name;
  @override
  final int rating;
  @override
  final String originalName;
  @override
  final String creditId;
  @override
  final String character;
  @override
  final String department;
  @override
  final String job;

  factory _$BaseTvResults([void Function(BaseTvResultsBuilder) updates]) =>
      (new BaseTvResultsBuilder()..update(updates)).build();

  _$BaseTvResults._(
      {this.posterPath,
      this.popularity,
      this.id,
      this.backdropPath,
      this.voteAverage,
      this.overview,
      this.firstAirDate,
      this.originCountry,
      this.genreIDs,
      this.originalLanguage,
      this.voteCount,
      this.name,
      this.rating,
      this.originalName,
      this.creditId,
      this.character,
      this.department,
      this.job})
      : super._() {
    if (popularity == null) {
      throw new BuiltValueNullFieldError('BaseTvResults', 'popularity');
    }
    if (id == null) {
      throw new BuiltValueNullFieldError('BaseTvResults', 'id');
    }
    if (voteAverage == null) {
      throw new BuiltValueNullFieldError('BaseTvResults', 'voteAverage');
    }
    if (overview == null) {
      throw new BuiltValueNullFieldError('BaseTvResults', 'overview');
    }
    if (firstAirDate == null) {
      throw new BuiltValueNullFieldError('BaseTvResults', 'firstAirDate');
    }
    if (originCountry == null) {
      throw new BuiltValueNullFieldError('BaseTvResults', 'originCountry');
    }
    if (genreIDs == null) {
      throw new BuiltValueNullFieldError('BaseTvResults', 'genreIDs');
    }
    if (originalLanguage == null) {
      throw new BuiltValueNullFieldError('BaseTvResults', 'originalLanguage');
    }
    if (voteCount == null) {
      throw new BuiltValueNullFieldError('BaseTvResults', 'voteCount');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('BaseTvResults', 'name');
    }
    if (originalName == null) {
      throw new BuiltValueNullFieldError('BaseTvResults', 'originalName');
    }
  }

  @override
  BaseTvResults rebuild(void Function(BaseTvResultsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BaseTvResultsBuilder toBuilder() => new BaseTvResultsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BaseTvResults &&
        posterPath == other.posterPath &&
        popularity == other.popularity &&
        id == other.id &&
        backdropPath == other.backdropPath &&
        voteAverage == other.voteAverage &&
        overview == other.overview &&
        firstAirDate == other.firstAirDate &&
        originCountry == other.originCountry &&
        genreIDs == other.genreIDs &&
        originalLanguage == other.originalLanguage &&
        voteCount == other.voteCount &&
        name == other.name &&
        rating == other.rating &&
        originalName == other.originalName &&
        creditId == other.creditId &&
        character == other.character &&
        department == other.department &&
        job == other.job;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            0,
                                                                            posterPath
                                                                                .hashCode),
                                                                        popularity
                                                                            .hashCode),
                                                                    id
                                                                        .hashCode),
                                                                backdropPath
                                                                    .hashCode),
                                                            voteAverage
                                                                .hashCode),
                                                        overview.hashCode),
                                                    firstAirDate.hashCode),
                                                originCountry.hashCode),
                                            genreIDs.hashCode),
                                        originalLanguage.hashCode),
                                    voteCount.hashCode),
                                name.hashCode),
                            rating.hashCode),
                        originalName.hashCode),
                    creditId.hashCode),
                character.hashCode),
            department.hashCode),
        job.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BaseTvResults')
          ..add('posterPath', posterPath)
          ..add('popularity', popularity)
          ..add('id', id)
          ..add('backdropPath', backdropPath)
          ..add('voteAverage', voteAverage)
          ..add('overview', overview)
          ..add('firstAirDate', firstAirDate)
          ..add('originCountry', originCountry)
          ..add('genreIDs', genreIDs)
          ..add('originalLanguage', originalLanguage)
          ..add('voteCount', voteCount)
          ..add('name', name)
          ..add('rating', rating)
          ..add('originalName', originalName)
          ..add('creditId', creditId)
          ..add('character', character)
          ..add('department', department)
          ..add('job', job))
        .toString();
  }
}

class BaseTvResultsBuilder
    implements Builder<BaseTvResults, BaseTvResultsBuilder> {
  _$BaseTvResults _$v;

  String _posterPath;
  String get posterPath => _$this._posterPath;
  set posterPath(String posterPath) => _$this._posterPath = posterPath;

  double _popularity;
  double get popularity => _$this._popularity;
  set popularity(double popularity) => _$this._popularity = popularity;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _backdropPath;
  String get backdropPath => _$this._backdropPath;
  set backdropPath(String backdropPath) => _$this._backdropPath = backdropPath;

  double _voteAverage;
  double get voteAverage => _$this._voteAverage;
  set voteAverage(double voteAverage) => _$this._voteAverage = voteAverage;

  String _overview;
  String get overview => _$this._overview;
  set overview(String overview) => _$this._overview = overview;

  String _firstAirDate;
  String get firstAirDate => _$this._firstAirDate;
  set firstAirDate(String firstAirDate) => _$this._firstAirDate = firstAirDate;

  ListBuilder<String> _originCountry;
  ListBuilder<String> get originCountry =>
      _$this._originCountry ??= new ListBuilder<String>();
  set originCountry(ListBuilder<String> originCountry) =>
      _$this._originCountry = originCountry;

  ListBuilder<int> _genreIDs;
  ListBuilder<int> get genreIDs => _$this._genreIDs ??= new ListBuilder<int>();
  set genreIDs(ListBuilder<int> genreIDs) => _$this._genreIDs = genreIDs;

  String _originalLanguage;
  String get originalLanguage => _$this._originalLanguage;
  set originalLanguage(String originalLanguage) =>
      _$this._originalLanguage = originalLanguage;

  int _voteCount;
  int get voteCount => _$this._voteCount;
  set voteCount(int voteCount) => _$this._voteCount = voteCount;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  int _rating;
  int get rating => _$this._rating;
  set rating(int rating) => _$this._rating = rating;

  String _originalName;
  String get originalName => _$this._originalName;
  set originalName(String originalName) => _$this._originalName = originalName;

  String _creditId;
  String get creditId => _$this._creditId;
  set creditId(String creditId) => _$this._creditId = creditId;

  String _character;
  String get character => _$this._character;
  set character(String character) => _$this._character = character;

  String _department;
  String get department => _$this._department;
  set department(String department) => _$this._department = department;

  String _job;
  String get job => _$this._job;
  set job(String job) => _$this._job = job;

  BaseTvResultsBuilder();

  BaseTvResultsBuilder get _$this {
    if (_$v != null) {
      _posterPath = _$v.posterPath;
      _popularity = _$v.popularity;
      _id = _$v.id;
      _backdropPath = _$v.backdropPath;
      _voteAverage = _$v.voteAverage;
      _overview = _$v.overview;
      _firstAirDate = _$v.firstAirDate;
      _originCountry = _$v.originCountry?.toBuilder();
      _genreIDs = _$v.genreIDs?.toBuilder();
      _originalLanguage = _$v.originalLanguage;
      _voteCount = _$v.voteCount;
      _name = _$v.name;
      _rating = _$v.rating;
      _originalName = _$v.originalName;
      _creditId = _$v.creditId;
      _character = _$v.character;
      _department = _$v.department;
      _job = _$v.job;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BaseTvResults other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BaseTvResults;
  }

  @override
  void update(void Function(BaseTvResultsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BaseTvResults build() {
    _$BaseTvResults _$result;
    try {
      _$result = _$v ??
          new _$BaseTvResults._(
              posterPath: posterPath,
              popularity: popularity,
              id: id,
              backdropPath: backdropPath,
              voteAverage: voteAverage,
              overview: overview,
              firstAirDate: firstAirDate,
              originCountry: originCountry.build(),
              genreIDs: genreIDs.build(),
              originalLanguage: originalLanguage,
              voteCount: voteCount,
              name: name,
              rating: rating,
              originalName: originalName,
              creditId: creditId,
              character: character,
              department: department,
              job: job);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'originCountry';
        originCountry.build();
        _$failedField = 'genreIDs';
        genreIDs.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BaseTvResults', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
