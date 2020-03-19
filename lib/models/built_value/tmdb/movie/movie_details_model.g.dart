// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_details_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MovieDetailsModel> _$movieDetailsModelSerializer =
    new _$MovieDetailsModelSerializer();

class _$MovieDetailsModelSerializer
    implements StructuredSerializer<MovieDetailsModel> {
  @override
  final Iterable<Type> types = const [MovieDetailsModel, _$MovieDetailsModel];
  @override
  final String wireName = 'MovieDetailsModel';

  @override
  Iterable<Object> serialize(Serializers serializers, MovieDetailsModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'adult',
      serializers.serialize(object.adult, specifiedType: const FullType(bool)),
      'budget',
      serializers.serialize(object.budget, specifiedType: const FullType(int)),
      'genres',
      serializers.serialize(object.genres,
          specifiedType: const FullType(GenresModel)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'imdb_id',
      serializers.serialize(object.imdbId,
          specifiedType: const FullType(String)),
      'original_language',
      serializers.serialize(object.originalLanguage,
          specifiedType: const FullType(String)),
      'original_title',
      serializers.serialize(object.originalTitle,
          specifiedType: const FullType(String)),
      'overview',
      serializers.serialize(object.overview,
          specifiedType: const FullType(String)),
      'popularity',
      serializers.serialize(object.popularity,
          specifiedType: const FullType(double)),
      'production_companies',
      serializers.serialize(object.productionCompanies,
          specifiedType: const FullType(
              BuiltList, const [const FullType(ProductionCompaniesModel)])),
      'production_countries',
      serializers.serialize(object.productionCountries,
          specifiedType: const FullType(
              BuiltList, const [const FullType(ProductionCountriesModel)])),
      'release_date',
      serializers.serialize(object.releaseDate,
          specifiedType: const FullType(String)),
      'revenue',
      serializers.serialize(object.revenue, specifiedType: const FullType(int)),
      'spoken_languages',
      serializers.serialize(object.spokenLanguages,
          specifiedType: const FullType(String)),
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(String)),
      'tagline',
      serializers.serialize(object.tagLine,
          specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'video',
      serializers.serialize(object.video,
          specifiedType: const FullType(String)),
      'vote_average',
      serializers.serialize(object.voteAverage,
          specifiedType: const FullType(double)),
      'vote_count',
      serializers.serialize(object.voteCount,
          specifiedType: const FullType(int)),
    ];
    if (object.backdropPath != null) {
      result
        ..add('backdrop_path')
        ..add(serializers.serialize(object.backdropPath,
            specifiedType: const FullType(String)));
    }
    if (object.homepage != null) {
      result
        ..add('homepage')
        ..add(serializers.serialize(object.homepage,
            specifiedType: const FullType(String)));
    }
    if (object.networks != null) {
      result
        ..add('networks')
        ..add(serializers.serialize(object.networks,
            specifiedType: const FullType(
                BuiltList, const [const FullType(NetworksModel)])));
    }
    if (object.posterPath != null) {
      result
        ..add('poster_path')
        ..add(serializers.serialize(object.posterPath,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  MovieDetailsModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MovieDetailsModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'adult':
          result.adult = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'backdrop_path':
          result.backdropPath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'budget':
          result.budget = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'genres':
          result.genres.replace(serializers.deserialize(value,
              specifiedType: const FullType(GenresModel)) as GenresModel);
          break;
        case 'homepage':
          result.homepage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'imdb_id':
          result.imdbId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'original_language':
          result.originalLanguage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'original_title':
          result.originalTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'networks':
          result.networks.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(NetworksModel)]))
              as BuiltList<dynamic>);
          break;
        case 'overview':
          result.overview = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'popularity':
          result.popularity = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'poster_path':
          result.posterPath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'production_companies':
          result.productionCompanies.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(ProductionCompaniesModel)
              ])) as BuiltList<dynamic>);
          break;
        case 'production_countries':
          result.productionCountries.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(ProductionCountriesModel)
              ])) as BuiltList<dynamic>);
          break;
        case 'release_date':
          result.releaseDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'revenue':
          result.revenue = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'spoken_languages':
          result.spokenLanguages = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tagline':
          result.tagLine = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'video':
          result.video = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'vote_average':
          result.voteAverage = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'vote_count':
          result.voteCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$MovieDetailsModel extends MovieDetailsModel {
  @override
  final bool adult;
  @override
  final String backdropPath;
  @override
  final int budget;
  @override
  final GenresModel genres;
  @override
  final String homepage;
  @override
  final int id;
  @override
  final String imdbId;
  @override
  final String originalLanguage;
  @override
  final String originalTitle;
  @override
  final BuiltList<NetworksModel> networks;
  @override
  final String overview;
  @override
  final double popularity;
  @override
  final String posterPath;
  @override
  final BuiltList<ProductionCompaniesModel> productionCompanies;
  @override
  final BuiltList<ProductionCountriesModel> productionCountries;
  @override
  final String releaseDate;
  @override
  final int revenue;
  @override
  final String spokenLanguages;
  @override
  final String status;
  @override
  final String tagLine;
  @override
  final String title;
  @override
  final String video;
  @override
  final double voteAverage;
  @override
  final int voteCount;

  factory _$MovieDetailsModel(
          [void Function(MovieDetailsModelBuilder) updates]) =>
      (new MovieDetailsModelBuilder()..update(updates)).build();

  _$MovieDetailsModel._(
      {this.adult,
      this.backdropPath,
      this.budget,
      this.genres,
      this.homepage,
      this.id,
      this.imdbId,
      this.originalLanguage,
      this.originalTitle,
      this.networks,
      this.overview,
      this.popularity,
      this.posterPath,
      this.productionCompanies,
      this.productionCountries,
      this.releaseDate,
      this.revenue,
      this.spokenLanguages,
      this.status,
      this.tagLine,
      this.title,
      this.video,
      this.voteAverage,
      this.voteCount})
      : super._() {
    if (adult == null) {
      throw new BuiltValueNullFieldError('MovieDetailsModel', 'adult');
    }
    if (budget == null) {
      throw new BuiltValueNullFieldError('MovieDetailsModel', 'budget');
    }
    if (genres == null) {
      throw new BuiltValueNullFieldError('MovieDetailsModel', 'genres');
    }
    if (id == null) {
      throw new BuiltValueNullFieldError('MovieDetailsModel', 'id');
    }
    if (imdbId == null) {
      throw new BuiltValueNullFieldError('MovieDetailsModel', 'imdbId');
    }
    if (originalLanguage == null) {
      throw new BuiltValueNullFieldError(
          'MovieDetailsModel', 'originalLanguage');
    }
    if (originalTitle == null) {
      throw new BuiltValueNullFieldError('MovieDetailsModel', 'originalTitle');
    }
    if (overview == null) {
      throw new BuiltValueNullFieldError('MovieDetailsModel', 'overview');
    }
    if (popularity == null) {
      throw new BuiltValueNullFieldError('MovieDetailsModel', 'popularity');
    }
    if (productionCompanies == null) {
      throw new BuiltValueNullFieldError(
          'MovieDetailsModel', 'productionCompanies');
    }
    if (productionCountries == null) {
      throw new BuiltValueNullFieldError(
          'MovieDetailsModel', 'productionCountries');
    }
    if (releaseDate == null) {
      throw new BuiltValueNullFieldError('MovieDetailsModel', 'releaseDate');
    }
    if (revenue == null) {
      throw new BuiltValueNullFieldError('MovieDetailsModel', 'revenue');
    }
    if (spokenLanguages == null) {
      throw new BuiltValueNullFieldError(
          'MovieDetailsModel', 'spokenLanguages');
    }
    if (status == null) {
      throw new BuiltValueNullFieldError('MovieDetailsModel', 'status');
    }
    if (tagLine == null) {
      throw new BuiltValueNullFieldError('MovieDetailsModel', 'tagLine');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError('MovieDetailsModel', 'title');
    }
    if (video == null) {
      throw new BuiltValueNullFieldError('MovieDetailsModel', 'video');
    }
    if (voteAverage == null) {
      throw new BuiltValueNullFieldError('MovieDetailsModel', 'voteAverage');
    }
    if (voteCount == null) {
      throw new BuiltValueNullFieldError('MovieDetailsModel', 'voteCount');
    }
  }

  @override
  MovieDetailsModel rebuild(void Function(MovieDetailsModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MovieDetailsModelBuilder toBuilder() =>
      new MovieDetailsModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MovieDetailsModel &&
        adult == other.adult &&
        backdropPath == other.backdropPath &&
        budget == other.budget &&
        genres == other.genres &&
        homepage == other.homepage &&
        id == other.id &&
        imdbId == other.imdbId &&
        originalLanguage == other.originalLanguage &&
        originalTitle == other.originalTitle &&
        networks == other.networks &&
        overview == other.overview &&
        popularity == other.popularity &&
        posterPath == other.posterPath &&
        productionCompanies == other.productionCompanies &&
        productionCountries == other.productionCountries &&
        releaseDate == other.releaseDate &&
        revenue == other.revenue &&
        spokenLanguages == other.spokenLanguages &&
        status == other.status &&
        tagLine == other.tagLine &&
        title == other.title &&
        video == other.video &&
        voteAverage == other.voteAverage &&
        voteCount == other.voteCount;
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
                                                                            $jc($jc($jc($jc($jc($jc(0, adult.hashCode), backdropPath.hashCode), budget.hashCode), genres.hashCode), homepage.hashCode),
                                                                                id.hashCode),
                                                                            imdbId.hashCode),
                                                                        originalLanguage.hashCode),
                                                                    originalTitle.hashCode),
                                                                networks.hashCode),
                                                            overview.hashCode),
                                                        popularity.hashCode),
                                                    posterPath.hashCode),
                                                productionCompanies.hashCode),
                                            productionCountries.hashCode),
                                        releaseDate.hashCode),
                                    revenue.hashCode),
                                spokenLanguages.hashCode),
                            status.hashCode),
                        tagLine.hashCode),
                    title.hashCode),
                video.hashCode),
            voteAverage.hashCode),
        voteCount.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MovieDetailsModel')
          ..add('adult', adult)
          ..add('backdropPath', backdropPath)
          ..add('budget', budget)
          ..add('genres', genres)
          ..add('homepage', homepage)
          ..add('id', id)
          ..add('imdbId', imdbId)
          ..add('originalLanguage', originalLanguage)
          ..add('originalTitle', originalTitle)
          ..add('networks', networks)
          ..add('overview', overview)
          ..add('popularity', popularity)
          ..add('posterPath', posterPath)
          ..add('productionCompanies', productionCompanies)
          ..add('productionCountries', productionCountries)
          ..add('releaseDate', releaseDate)
          ..add('revenue', revenue)
          ..add('spokenLanguages', spokenLanguages)
          ..add('status', status)
          ..add('tagLine', tagLine)
          ..add('title', title)
          ..add('video', video)
          ..add('voteAverage', voteAverage)
          ..add('voteCount', voteCount))
        .toString();
  }
}

class MovieDetailsModelBuilder
    implements Builder<MovieDetailsModel, MovieDetailsModelBuilder> {
  _$MovieDetailsModel _$v;

  bool _adult;
  bool get adult => _$this._adult;
  set adult(bool adult) => _$this._adult = adult;

  String _backdropPath;
  String get backdropPath => _$this._backdropPath;
  set backdropPath(String backdropPath) => _$this._backdropPath = backdropPath;

  int _budget;
  int get budget => _$this._budget;
  set budget(int budget) => _$this._budget = budget;

  GenresModelBuilder _genres;
  GenresModelBuilder get genres => _$this._genres ??= new GenresModelBuilder();
  set genres(GenresModelBuilder genres) => _$this._genres = genres;

  String _homepage;
  String get homepage => _$this._homepage;
  set homepage(String homepage) => _$this._homepage = homepage;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _imdbId;
  String get imdbId => _$this._imdbId;
  set imdbId(String imdbId) => _$this._imdbId = imdbId;

  String _originalLanguage;
  String get originalLanguage => _$this._originalLanguage;
  set originalLanguage(String originalLanguage) =>
      _$this._originalLanguage = originalLanguage;

  String _originalTitle;
  String get originalTitle => _$this._originalTitle;
  set originalTitle(String originalTitle) =>
      _$this._originalTitle = originalTitle;

  ListBuilder<NetworksModel> _networks;
  ListBuilder<NetworksModel> get networks =>
      _$this._networks ??= new ListBuilder<NetworksModel>();
  set networks(ListBuilder<NetworksModel> networks) =>
      _$this._networks = networks;

  String _overview;
  String get overview => _$this._overview;
  set overview(String overview) => _$this._overview = overview;

  double _popularity;
  double get popularity => _$this._popularity;
  set popularity(double popularity) => _$this._popularity = popularity;

  String _posterPath;
  String get posterPath => _$this._posterPath;
  set posterPath(String posterPath) => _$this._posterPath = posterPath;

  ListBuilder<ProductionCompaniesModel> _productionCompanies;
  ListBuilder<ProductionCompaniesModel> get productionCompanies =>
      _$this._productionCompanies ??=
          new ListBuilder<ProductionCompaniesModel>();
  set productionCompanies(
          ListBuilder<ProductionCompaniesModel> productionCompanies) =>
      _$this._productionCompanies = productionCompanies;

  ListBuilder<ProductionCountriesModel> _productionCountries;
  ListBuilder<ProductionCountriesModel> get productionCountries =>
      _$this._productionCountries ??=
          new ListBuilder<ProductionCountriesModel>();
  set productionCountries(
          ListBuilder<ProductionCountriesModel> productionCountries) =>
      _$this._productionCountries = productionCountries;

  String _releaseDate;
  String get releaseDate => _$this._releaseDate;
  set releaseDate(String releaseDate) => _$this._releaseDate = releaseDate;

  int _revenue;
  int get revenue => _$this._revenue;
  set revenue(int revenue) => _$this._revenue = revenue;

  String _spokenLanguages;
  String get spokenLanguages => _$this._spokenLanguages;
  set spokenLanguages(String spokenLanguages) =>
      _$this._spokenLanguages = spokenLanguages;

  String _status;
  String get status => _$this._status;
  set status(String status) => _$this._status = status;

  String _tagLine;
  String get tagLine => _$this._tagLine;
  set tagLine(String tagLine) => _$this._tagLine = tagLine;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _video;
  String get video => _$this._video;
  set video(String video) => _$this._video = video;

  double _voteAverage;
  double get voteAverage => _$this._voteAverage;
  set voteAverage(double voteAverage) => _$this._voteAverage = voteAverage;

  int _voteCount;
  int get voteCount => _$this._voteCount;
  set voteCount(int voteCount) => _$this._voteCount = voteCount;

  MovieDetailsModelBuilder();

  MovieDetailsModelBuilder get _$this {
    if (_$v != null) {
      _adult = _$v.adult;
      _backdropPath = _$v.backdropPath;
      _budget = _$v.budget;
      _genres = _$v.genres?.toBuilder();
      _homepage = _$v.homepage;
      _id = _$v.id;
      _imdbId = _$v.imdbId;
      _originalLanguage = _$v.originalLanguage;
      _originalTitle = _$v.originalTitle;
      _networks = _$v.networks?.toBuilder();
      _overview = _$v.overview;
      _popularity = _$v.popularity;
      _posterPath = _$v.posterPath;
      _productionCompanies = _$v.productionCompanies?.toBuilder();
      _productionCountries = _$v.productionCountries?.toBuilder();
      _releaseDate = _$v.releaseDate;
      _revenue = _$v.revenue;
      _spokenLanguages = _$v.spokenLanguages;
      _status = _$v.status;
      _tagLine = _$v.tagLine;
      _title = _$v.title;
      _video = _$v.video;
      _voteAverage = _$v.voteAverage;
      _voteCount = _$v.voteCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MovieDetailsModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MovieDetailsModel;
  }

  @override
  void update(void Function(MovieDetailsModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MovieDetailsModel build() {
    _$MovieDetailsModel _$result;
    try {
      _$result = _$v ??
          new _$MovieDetailsModel._(
              adult: adult,
              backdropPath: backdropPath,
              budget: budget,
              genres: genres.build(),
              homepage: homepage,
              id: id,
              imdbId: imdbId,
              originalLanguage: originalLanguage,
              originalTitle: originalTitle,
              networks: _networks?.build(),
              overview: overview,
              popularity: popularity,
              posterPath: posterPath,
              productionCompanies: productionCompanies.build(),
              productionCountries: productionCountries.build(),
              releaseDate: releaseDate,
              revenue: revenue,
              spokenLanguages: spokenLanguages,
              status: status,
              tagLine: tagLine,
              title: title,
              video: video,
              voteAverage: voteAverage,
              voteCount: voteCount);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'genres';
        genres.build();

        _$failedField = 'networks';
        _networks?.build();

        _$failedField = 'productionCompanies';
        productionCompanies.build();
        _$failedField = 'productionCountries';
        productionCountries.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'MovieDetailsModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
