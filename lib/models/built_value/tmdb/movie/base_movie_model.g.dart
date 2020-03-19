// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_movie_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BaseMovieModel> _$baseMovieModelSerializer =
    new _$BaseMovieModelSerializer();
Serializer<BaseMovieResults> _$baseMovieResultsSerializer =
    new _$BaseMovieResultsSerializer();

class _$BaseMovieModelSerializer
    implements StructuredSerializer<BaseMovieModel> {
  @override
  final Iterable<Type> types = const [BaseMovieModel, _$BaseMovieModel];
  @override
  final String wireName = 'BaseMovieModel';

  @override
  Iterable<Object> serialize(Serializers serializers, BaseMovieModel object,
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
  BaseMovieModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BaseMovieModelBuilder();

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

class _$BaseMovieResultsSerializer
    implements StructuredSerializer<BaseMovieResults> {
  @override
  final Iterable<Type> types = const [BaseMovieResults, _$BaseMovieResults];
  @override
  final String wireName = 'BaseMovieResults';

  @override
  Iterable<Object> serialize(Serializers serializers, BaseMovieResults object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'adult',
      serializers.serialize(object.adult,
          specifiedType: const FullType(String)),
      'overview',
      serializers.serialize(object.overview,
          specifiedType: const FullType(String)),
      'release_date',
      serializers.serialize(object.releaseDate,
          specifiedType: const FullType(String)),
      'genre_ids',
      serializers.serialize(object.genreIDs,
          specifiedType:
              const FullType(BuiltList, const [const FullType(int)])),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'original_title',
      serializers.serialize(object.originalTitle,
          specifiedType: const FullType(String)),
      'original_language',
      serializers.serialize(object.originalLanguage,
          specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'popularity',
      serializers.serialize(object.popularity,
          specifiedType: const FullType(double)),
      'vote_average',
      serializers.serialize(object.voteAverage,
          specifiedType: const FullType(double)),
      'vote_count',
      serializers.serialize(object.voteCount,
          specifiedType: const FullType(int)),
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
    if (object.video != null) {
      result
        ..add('video')
        ..add(serializers.serialize(object.video,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.rating != null) {
      result
        ..add('rating')
        ..add(serializers.serialize(object.rating,
            specifiedType: const FullType(int)));
    }
    if (object.character != null) {
      result
        ..add('character')
        ..add(serializers.serialize(object.character,
            specifiedType: const FullType(String)));
    }
    if (object.creditId != null) {
      result
        ..add('credit_id')
        ..add(serializers.serialize(object.creditId,
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
  BaseMovieResults deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BaseMovieResultsBuilder();

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
        case 'adult':
          result.adult = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'overview':
          result.overview = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'release_date':
          result.releaseDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'genre_ids':
          result.genreIDs.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))
              as BuiltList<dynamic>);
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'original_title':
          result.originalTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'original_language':
          result.originalLanguage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'popularity':
          result.popularity = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'backdrop_path':
          result.backdropPath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'vote_average':
          result.voteAverage = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'video':
          result.video.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<dynamic>);
          break;
        case 'vote_count':
          result.voteCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'character':
          result.character = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'credit_id':
          result.creditId = serializers.deserialize(value,
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

class _$BaseMovieModel extends BaseMovieModel {
  @override
  final int page;
  @override
  final BuiltList<BaseMovieResults> results;
  @override
  final int totalResults;
  @override
  final int totalPages;

  factory _$BaseMovieModel([void Function(BaseMovieModelBuilder) updates]) =>
      (new BaseMovieModelBuilder()..update(updates)).build();

  _$BaseMovieModel._(
      {this.page, this.results, this.totalResults, this.totalPages})
      : super._() {
    if (results == null) {
      throw new BuiltValueNullFieldError('BaseMovieModel', 'results');
    }
  }

  @override
  BaseMovieModel rebuild(void Function(BaseMovieModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BaseMovieModelBuilder toBuilder() =>
      new BaseMovieModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BaseMovieModel &&
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
    return (newBuiltValueToStringHelper('BaseMovieModel')
          ..add('page', page)
          ..add('results', results)
          ..add('totalResults', totalResults)
          ..add('totalPages', totalPages))
        .toString();
  }
}

class BaseMovieModelBuilder
    implements Builder<BaseMovieModel, BaseMovieModelBuilder> {
  _$BaseMovieModel _$v;

  int _page;
  int get page => _$this._page;
  set page(int page) => _$this._page = page;

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

  BaseMovieModelBuilder();

  BaseMovieModelBuilder get _$this {
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
  void replace(BaseMovieModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BaseMovieModel;
  }

  @override
  void update(void Function(BaseMovieModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BaseMovieModel build() {
    _$BaseMovieModel _$result;
    try {
      _$result = _$v ??
          new _$BaseMovieModel._(
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
            'BaseMovieModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$BaseMovieResults extends BaseMovieResults {
  @override
  final String posterPath;
  @override
  final String adult;
  @override
  final String overview;
  @override
  final String releaseDate;
  @override
  final BuiltList<int> genreIDs;
  @override
  final int id;
  @override
  final String originalTitle;
  @override
  final String originalLanguage;
  @override
  final String title;
  @override
  final double popularity;
  @override
  final String backdropPath;
  @override
  final double voteAverage;
  @override
  final BuiltList<String> video;
  @override
  final int voteCount;
  @override
  final int rating;
  @override
  final String character;
  @override
  final String creditId;
  @override
  final String department;
  @override
  final String job;

  factory _$BaseMovieResults(
          [void Function(BaseMovieResultsBuilder) updates]) =>
      (new BaseMovieResultsBuilder()..update(updates)).build();

  _$BaseMovieResults._(
      {this.posterPath,
      this.adult,
      this.overview,
      this.releaseDate,
      this.genreIDs,
      this.id,
      this.originalTitle,
      this.originalLanguage,
      this.title,
      this.popularity,
      this.backdropPath,
      this.voteAverage,
      this.video,
      this.voteCount,
      this.rating,
      this.character,
      this.creditId,
      this.department,
      this.job})
      : super._() {
    if (adult == null) {
      throw new BuiltValueNullFieldError('BaseMovieResults', 'adult');
    }
    if (overview == null) {
      throw new BuiltValueNullFieldError('BaseMovieResults', 'overview');
    }
    if (releaseDate == null) {
      throw new BuiltValueNullFieldError('BaseMovieResults', 'releaseDate');
    }
    if (genreIDs == null) {
      throw new BuiltValueNullFieldError('BaseMovieResults', 'genreIDs');
    }
    if (id == null) {
      throw new BuiltValueNullFieldError('BaseMovieResults', 'id');
    }
    if (originalTitle == null) {
      throw new BuiltValueNullFieldError('BaseMovieResults', 'originalTitle');
    }
    if (originalLanguage == null) {
      throw new BuiltValueNullFieldError(
          'BaseMovieResults', 'originalLanguage');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError('BaseMovieResults', 'title');
    }
    if (popularity == null) {
      throw new BuiltValueNullFieldError('BaseMovieResults', 'popularity');
    }
    if (voteAverage == null) {
      throw new BuiltValueNullFieldError('BaseMovieResults', 'voteAverage');
    }
    if (voteCount == null) {
      throw new BuiltValueNullFieldError('BaseMovieResults', 'voteCount');
    }
  }

  @override
  BaseMovieResults rebuild(void Function(BaseMovieResultsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BaseMovieResultsBuilder toBuilder() =>
      new BaseMovieResultsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BaseMovieResults &&
        posterPath == other.posterPath &&
        adult == other.adult &&
        overview == other.overview &&
        releaseDate == other.releaseDate &&
        genreIDs == other.genreIDs &&
        id == other.id &&
        originalTitle == other.originalTitle &&
        originalLanguage == other.originalLanguage &&
        title == other.title &&
        popularity == other.popularity &&
        backdropPath == other.backdropPath &&
        voteAverage == other.voteAverage &&
        video == other.video &&
        voteCount == other.voteCount &&
        rating == other.rating &&
        character == other.character &&
        creditId == other.creditId &&
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
                                                                            $jc(
                                                                                0,
                                                                                posterPath
                                                                                    .hashCode),
                                                                            adult
                                                                                .hashCode),
                                                                        overview
                                                                            .hashCode),
                                                                    releaseDate
                                                                        .hashCode),
                                                                genreIDs
                                                                    .hashCode),
                                                            id.hashCode),
                                                        originalTitle.hashCode),
                                                    originalLanguage.hashCode),
                                                title.hashCode),
                                            popularity.hashCode),
                                        backdropPath.hashCode),
                                    voteAverage.hashCode),
                                video.hashCode),
                            voteCount.hashCode),
                        rating.hashCode),
                    character.hashCode),
                creditId.hashCode),
            department.hashCode),
        job.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BaseMovieResults')
          ..add('posterPath', posterPath)
          ..add('adult', adult)
          ..add('overview', overview)
          ..add('releaseDate', releaseDate)
          ..add('genreIDs', genreIDs)
          ..add('id', id)
          ..add('originalTitle', originalTitle)
          ..add('originalLanguage', originalLanguage)
          ..add('title', title)
          ..add('popularity', popularity)
          ..add('backdropPath', backdropPath)
          ..add('voteAverage', voteAverage)
          ..add('video', video)
          ..add('voteCount', voteCount)
          ..add('rating', rating)
          ..add('character', character)
          ..add('creditId', creditId)
          ..add('department', department)
          ..add('job', job))
        .toString();
  }
}

class BaseMovieResultsBuilder
    implements Builder<BaseMovieResults, BaseMovieResultsBuilder> {
  _$BaseMovieResults _$v;

  String _posterPath;
  String get posterPath => _$this._posterPath;
  set posterPath(String posterPath) => _$this._posterPath = posterPath;

  String _adult;
  String get adult => _$this._adult;
  set adult(String adult) => _$this._adult = adult;

  String _overview;
  String get overview => _$this._overview;
  set overview(String overview) => _$this._overview = overview;

  String _releaseDate;
  String get releaseDate => _$this._releaseDate;
  set releaseDate(String releaseDate) => _$this._releaseDate = releaseDate;

  ListBuilder<int> _genreIDs;
  ListBuilder<int> get genreIDs => _$this._genreIDs ??= new ListBuilder<int>();
  set genreIDs(ListBuilder<int> genreIDs) => _$this._genreIDs = genreIDs;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _originalTitle;
  String get originalTitle => _$this._originalTitle;
  set originalTitle(String originalTitle) =>
      _$this._originalTitle = originalTitle;

  String _originalLanguage;
  String get originalLanguage => _$this._originalLanguage;
  set originalLanguage(String originalLanguage) =>
      _$this._originalLanguage = originalLanguage;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  double _popularity;
  double get popularity => _$this._popularity;
  set popularity(double popularity) => _$this._popularity = popularity;

  String _backdropPath;
  String get backdropPath => _$this._backdropPath;
  set backdropPath(String backdropPath) => _$this._backdropPath = backdropPath;

  double _voteAverage;
  double get voteAverage => _$this._voteAverage;
  set voteAverage(double voteAverage) => _$this._voteAverage = voteAverage;

  ListBuilder<String> _video;
  ListBuilder<String> get video => _$this._video ??= new ListBuilder<String>();
  set video(ListBuilder<String> video) => _$this._video = video;

  int _voteCount;
  int get voteCount => _$this._voteCount;
  set voteCount(int voteCount) => _$this._voteCount = voteCount;

  int _rating;
  int get rating => _$this._rating;
  set rating(int rating) => _$this._rating = rating;

  String _character;
  String get character => _$this._character;
  set character(String character) => _$this._character = character;

  String _creditId;
  String get creditId => _$this._creditId;
  set creditId(String creditId) => _$this._creditId = creditId;

  String _department;
  String get department => _$this._department;
  set department(String department) => _$this._department = department;

  String _job;
  String get job => _$this._job;
  set job(String job) => _$this._job = job;

  BaseMovieResultsBuilder();

  BaseMovieResultsBuilder get _$this {
    if (_$v != null) {
      _posterPath = _$v.posterPath;
      _adult = _$v.adult;
      _overview = _$v.overview;
      _releaseDate = _$v.releaseDate;
      _genreIDs = _$v.genreIDs?.toBuilder();
      _id = _$v.id;
      _originalTitle = _$v.originalTitle;
      _originalLanguage = _$v.originalLanguage;
      _title = _$v.title;
      _popularity = _$v.popularity;
      _backdropPath = _$v.backdropPath;
      _voteAverage = _$v.voteAverage;
      _video = _$v.video?.toBuilder();
      _voteCount = _$v.voteCount;
      _rating = _$v.rating;
      _character = _$v.character;
      _creditId = _$v.creditId;
      _department = _$v.department;
      _job = _$v.job;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BaseMovieResults other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BaseMovieResults;
  }

  @override
  void update(void Function(BaseMovieResultsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BaseMovieResults build() {
    _$BaseMovieResults _$result;
    try {
      _$result = _$v ??
          new _$BaseMovieResults._(
              posterPath: posterPath,
              adult: adult,
              overview: overview,
              releaseDate: releaseDate,
              genreIDs: genreIDs.build(),
              id: id,
              originalTitle: originalTitle,
              originalLanguage: originalLanguage,
              title: title,
              popularity: popularity,
              backdropPath: backdropPath,
              voteAverage: voteAverage,
              video: _video?.build(),
              voteCount: voteCount,
              rating: rating,
              character: character,
              creditId: creditId,
              department: department,
              job: job);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'genreIDs';
        genreIDs.build();

        _$failedField = 'video';
        _video?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BaseMovieResults', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
