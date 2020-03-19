// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tv_details_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TvDetailsModel> _$tvDetailsModelSerializer =
    new _$TvDetailsModelSerializer();

class _$TvDetailsModelSerializer
    implements StructuredSerializer<TvDetailsModel> {
  @override
  final Iterable<Type> types = const [TvDetailsModel, _$TvDetailsModel];
  @override
  final String wireName = 'TvDetailsModel';

  @override
  Iterable<Object> serialize(Serializers serializers, TvDetailsModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'episodes_run_time',
      serializers.serialize(object.episodesRunTime,
          specifiedType:
              const FullType(BuiltList, const [const FullType(int)])),
      'first_air_date',
      serializers.serialize(object.firstAirDate,
          specifiedType: const FullType(String)),
      'genres',
      serializers.serialize(object.genres,
          specifiedType:
              const FullType(BuiltList, const [const FullType(GenresModel)])),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'in_production',
      serializers.serialize(object.inProduction,
          specifiedType: const FullType(bool)),
      'languages',
      serializers.serialize(object.languages,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'last_air_date',
      serializers.serialize(object.lastAirDate,
          specifiedType: const FullType(String)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'networks',
      serializers.serialize(object.networks,
          specifiedType:
              const FullType(BuiltList, const [const FullType(NetworksModel)])),
      'number_of_episodes',
      serializers.serialize(object.numberOfEpisodes,
          specifiedType: const FullType(int)),
      'number_of_seasons',
      serializers.serialize(object.numberOfSeasons,
          specifiedType: const FullType(int)),
      'origin_country',
      serializers.serialize(object.originCountry,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
      'original_language',
      serializers.serialize(object.originalLanguage,
          specifiedType: const FullType(String)),
      'original_name',
      serializers.serialize(object.originalName,
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
      'seasons',
      serializers.serialize(object.seasons,
          specifiedType:
              const FullType(BuiltList, const [const FullType(SeasonsModel)])),
      'status',
      serializers.serialize(object.status,
          specifiedType: const FullType(String)),
      'vote_average',
      serializers.serialize(object.voteAverage,
          specifiedType: const FullType(double)),
      'vote_count',
      serializers.serialize(object.voteCount,
          specifiedType: const FullType(int)),
    ];
    if (object.backdrop != null) {
      result
        ..add('backdrop_path')
        ..add(serializers.serialize(object.backdrop,
            specifiedType: const FullType(String)));
    }
    if (object.createdBy != null) {
      result
        ..add('created_by')
        ..add(serializers.serialize(object.createdBy,
            specifiedType: const FullType(
                BuiltList, const [const FullType(CreatedByModel)])));
    }
    if (object.homepage != null) {
      result
        ..add('homepage')
        ..add(serializers.serialize(object.homepage,
            specifiedType: const FullType(String)));
    }
    if (object.lastEpisodeToAir != null) {
      result
        ..add('last_episode_to_air')
        ..add(serializers.serialize(object.lastEpisodeToAir,
            specifiedType: const FullType(EpisodeModel)));
    }
    if (object.nextEpisodeToAir != null) {
      result
        ..add('next_episode_to_air')
        ..add(serializers.serialize(object.nextEpisodeToAir,
            specifiedType: const FullType(EpisodeModel)));
    }
    if (object.imdbId != null) {
      result
        ..add('imdb_id')
        ..add(serializers.serialize(object.imdbId,
            specifiedType: const FullType(String)));
    }
    if (object.poster != null) {
      result
        ..add('poster_path')
        ..add(serializers.serialize(object.poster,
            specifiedType: const FullType(String)));
    }
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  TvDetailsModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TvDetailsModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'backdrop_path':
          result.backdrop = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_by':
          result.createdBy.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CreatedByModel)]))
              as BuiltList<dynamic>);
          break;
        case 'episodes_run_time':
          result.episodesRunTime.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))
              as BuiltList<dynamic>);
          break;
        case 'first_air_date':
          result.firstAirDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'genres':
          result.genres.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GenresModel)]))
              as BuiltList<dynamic>);
          break;
        case 'homepage':
          result.homepage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'in_production':
          result.inProduction = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'languages':
          result.languages.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<dynamic>);
          break;
        case 'last_air_date':
          result.lastAirDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'last_episode_to_air':
          result.lastEpisodeToAir.replace(serializers.deserialize(value,
              specifiedType: const FullType(EpisodeModel)) as EpisodeModel);
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'next_episode_to_air':
          result.nextEpisodeToAir.replace(serializers.deserialize(value,
              specifiedType: const FullType(EpisodeModel)) as EpisodeModel);
          break;
        case 'networks':
          result.networks.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(NetworksModel)]))
              as BuiltList<dynamic>);
          break;
        case 'number_of_episodes':
          result.numberOfEpisodes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'number_of_seasons':
          result.numberOfSeasons = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'origin_country':
          result.originCountry.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<dynamic>);
          break;
        case 'imdb_id':
          result.imdbId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'original_language':
          result.originalLanguage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'original_name':
          result.originalName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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
          result.poster = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'production_companies':
          result.productionCompanies.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(ProductionCompaniesModel)
              ])) as BuiltList<dynamic>);
          break;
        case 'seasons':
          result.seasons.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(SeasonsModel)]))
              as BuiltList<dynamic>);
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
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

class _$TvDetailsModel extends TvDetailsModel {
  @override
  final String backdrop;
  @override
  final BuiltList<CreatedByModel> createdBy;
  @override
  final BuiltList<int> episodesRunTime;
  @override
  final String firstAirDate;
  @override
  final BuiltList<GenresModel> genres;
  @override
  final String homepage;
  @override
  final int id;
  @override
  final bool inProduction;
  @override
  final BuiltList<String> languages;
  @override
  final String lastAirDate;
  @override
  final EpisodeModel lastEpisodeToAir;
  @override
  final String name;
  @override
  final EpisodeModel nextEpisodeToAir;
  @override
  final BuiltList<NetworksModel> networks;
  @override
  final int numberOfEpisodes;
  @override
  final int numberOfSeasons;
  @override
  final BuiltList<String> originCountry;
  @override
  final String imdbId;
  @override
  final String originalLanguage;
  @override
  final String originalName;
  @override
  final String overview;
  @override
  final double popularity;
  @override
  final String poster;
  @override
  final BuiltList<ProductionCompaniesModel> productionCompanies;
  @override
  final BuiltList<SeasonsModel> seasons;
  @override
  final String status;
  @override
  final String type;
  @override
  final double voteAverage;
  @override
  final int voteCount;

  factory _$TvDetailsModel([void Function(TvDetailsModelBuilder) updates]) =>
      (new TvDetailsModelBuilder()..update(updates)).build();

  _$TvDetailsModel._(
      {this.backdrop,
      this.createdBy,
      this.episodesRunTime,
      this.firstAirDate,
      this.genres,
      this.homepage,
      this.id,
      this.inProduction,
      this.languages,
      this.lastAirDate,
      this.lastEpisodeToAir,
      this.name,
      this.nextEpisodeToAir,
      this.networks,
      this.numberOfEpisodes,
      this.numberOfSeasons,
      this.originCountry,
      this.imdbId,
      this.originalLanguage,
      this.originalName,
      this.overview,
      this.popularity,
      this.poster,
      this.productionCompanies,
      this.seasons,
      this.status,
      this.type,
      this.voteAverage,
      this.voteCount})
      : super._() {
    if (episodesRunTime == null) {
      throw new BuiltValueNullFieldError('TvDetailsModel', 'episodesRunTime');
    }
    if (firstAirDate == null) {
      throw new BuiltValueNullFieldError('TvDetailsModel', 'firstAirDate');
    }
    if (genres == null) {
      throw new BuiltValueNullFieldError('TvDetailsModel', 'genres');
    }
    if (id == null) {
      throw new BuiltValueNullFieldError('TvDetailsModel', 'id');
    }
    if (inProduction == null) {
      throw new BuiltValueNullFieldError('TvDetailsModel', 'inProduction');
    }
    if (languages == null) {
      throw new BuiltValueNullFieldError('TvDetailsModel', 'languages');
    }
    if (lastAirDate == null) {
      throw new BuiltValueNullFieldError('TvDetailsModel', 'lastAirDate');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('TvDetailsModel', 'name');
    }
    if (networks == null) {
      throw new BuiltValueNullFieldError('TvDetailsModel', 'networks');
    }
    if (numberOfEpisodes == null) {
      throw new BuiltValueNullFieldError('TvDetailsModel', 'numberOfEpisodes');
    }
    if (numberOfSeasons == null) {
      throw new BuiltValueNullFieldError('TvDetailsModel', 'numberOfSeasons');
    }
    if (originCountry == null) {
      throw new BuiltValueNullFieldError('TvDetailsModel', 'originCountry');
    }
    if (originalLanguage == null) {
      throw new BuiltValueNullFieldError('TvDetailsModel', 'originalLanguage');
    }
    if (originalName == null) {
      throw new BuiltValueNullFieldError('TvDetailsModel', 'originalName');
    }
    if (overview == null) {
      throw new BuiltValueNullFieldError('TvDetailsModel', 'overview');
    }
    if (popularity == null) {
      throw new BuiltValueNullFieldError('TvDetailsModel', 'popularity');
    }
    if (productionCompanies == null) {
      throw new BuiltValueNullFieldError(
          'TvDetailsModel', 'productionCompanies');
    }
    if (seasons == null) {
      throw new BuiltValueNullFieldError('TvDetailsModel', 'seasons');
    }
    if (status == null) {
      throw new BuiltValueNullFieldError('TvDetailsModel', 'status');
    }
    if (voteAverage == null) {
      throw new BuiltValueNullFieldError('TvDetailsModel', 'voteAverage');
    }
    if (voteCount == null) {
      throw new BuiltValueNullFieldError('TvDetailsModel', 'voteCount');
    }
  }

  @override
  TvDetailsModel rebuild(void Function(TvDetailsModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TvDetailsModelBuilder toBuilder() =>
      new TvDetailsModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TvDetailsModel &&
        backdrop == other.backdrop &&
        createdBy == other.createdBy &&
        episodesRunTime == other.episodesRunTime &&
        firstAirDate == other.firstAirDate &&
        genres == other.genres &&
        homepage == other.homepage &&
        id == other.id &&
        inProduction == other.inProduction &&
        languages == other.languages &&
        lastAirDate == other.lastAirDate &&
        lastEpisodeToAir == other.lastEpisodeToAir &&
        name == other.name &&
        nextEpisodeToAir == other.nextEpisodeToAir &&
        networks == other.networks &&
        numberOfEpisodes == other.numberOfEpisodes &&
        numberOfSeasons == other.numberOfSeasons &&
        originCountry == other.originCountry &&
        imdbId == other.imdbId &&
        originalLanguage == other.originalLanguage &&
        originalName == other.originalName &&
        overview == other.overview &&
        popularity == other.popularity &&
        poster == other.poster &&
        productionCompanies == other.productionCompanies &&
        seasons == other.seasons &&
        status == other.status &&
        type == other.type &&
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
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, backdrop.hashCode), createdBy.hashCode), episodesRunTime.hashCode), firstAirDate.hashCode), genres.hashCode), homepage.hashCode), id.hashCode), inProduction.hashCode), languages.hashCode), lastAirDate.hashCode),
                                                                                lastEpisodeToAir.hashCode),
                                                                            name.hashCode),
                                                                        nextEpisodeToAir.hashCode),
                                                                    networks.hashCode),
                                                                numberOfEpisodes.hashCode),
                                                            numberOfSeasons.hashCode),
                                                        originCountry.hashCode),
                                                    imdbId.hashCode),
                                                originalLanguage.hashCode),
                                            originalName.hashCode),
                                        overview.hashCode),
                                    popularity.hashCode),
                                poster.hashCode),
                            productionCompanies.hashCode),
                        seasons.hashCode),
                    status.hashCode),
                type.hashCode),
            voteAverage.hashCode),
        voteCount.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TvDetailsModel')
          ..add('backdrop', backdrop)
          ..add('createdBy', createdBy)
          ..add('episodesRunTime', episodesRunTime)
          ..add('firstAirDate', firstAirDate)
          ..add('genres', genres)
          ..add('homepage', homepage)
          ..add('id', id)
          ..add('inProduction', inProduction)
          ..add('languages', languages)
          ..add('lastAirDate', lastAirDate)
          ..add('lastEpisodeToAir', lastEpisodeToAir)
          ..add('name', name)
          ..add('nextEpisodeToAir', nextEpisodeToAir)
          ..add('networks', networks)
          ..add('numberOfEpisodes', numberOfEpisodes)
          ..add('numberOfSeasons', numberOfSeasons)
          ..add('originCountry', originCountry)
          ..add('imdbId', imdbId)
          ..add('originalLanguage', originalLanguage)
          ..add('originalName', originalName)
          ..add('overview', overview)
          ..add('popularity', popularity)
          ..add('poster', poster)
          ..add('productionCompanies', productionCompanies)
          ..add('seasons', seasons)
          ..add('status', status)
          ..add('type', type)
          ..add('voteAverage', voteAverage)
          ..add('voteCount', voteCount))
        .toString();
  }
}

class TvDetailsModelBuilder
    implements Builder<TvDetailsModel, TvDetailsModelBuilder> {
  _$TvDetailsModel _$v;

  String _backdrop;
  String get backdrop => _$this._backdrop;
  set backdrop(String backdrop) => _$this._backdrop = backdrop;

  ListBuilder<CreatedByModel> _createdBy;
  ListBuilder<CreatedByModel> get createdBy =>
      _$this._createdBy ??= new ListBuilder<CreatedByModel>();
  set createdBy(ListBuilder<CreatedByModel> createdBy) =>
      _$this._createdBy = createdBy;

  ListBuilder<int> _episodesRunTime;
  ListBuilder<int> get episodesRunTime =>
      _$this._episodesRunTime ??= new ListBuilder<int>();
  set episodesRunTime(ListBuilder<int> episodesRunTime) =>
      _$this._episodesRunTime = episodesRunTime;

  String _firstAirDate;
  String get firstAirDate => _$this._firstAirDate;
  set firstAirDate(String firstAirDate) => _$this._firstAirDate = firstAirDate;

  ListBuilder<GenresModel> _genres;
  ListBuilder<GenresModel> get genres =>
      _$this._genres ??= new ListBuilder<GenresModel>();
  set genres(ListBuilder<GenresModel> genres) => _$this._genres = genres;

  String _homepage;
  String get homepage => _$this._homepage;
  set homepage(String homepage) => _$this._homepage = homepage;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  bool _inProduction;
  bool get inProduction => _$this._inProduction;
  set inProduction(bool inProduction) => _$this._inProduction = inProduction;

  ListBuilder<String> _languages;
  ListBuilder<String> get languages =>
      _$this._languages ??= new ListBuilder<String>();
  set languages(ListBuilder<String> languages) => _$this._languages = languages;

  String _lastAirDate;
  String get lastAirDate => _$this._lastAirDate;
  set lastAirDate(String lastAirDate) => _$this._lastAirDate = lastAirDate;

  EpisodeModelBuilder _lastEpisodeToAir;
  EpisodeModelBuilder get lastEpisodeToAir =>
      _$this._lastEpisodeToAir ??= new EpisodeModelBuilder();
  set lastEpisodeToAir(EpisodeModelBuilder lastEpisodeToAir) =>
      _$this._lastEpisodeToAir = lastEpisodeToAir;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  EpisodeModelBuilder _nextEpisodeToAir;
  EpisodeModelBuilder get nextEpisodeToAir =>
      _$this._nextEpisodeToAir ??= new EpisodeModelBuilder();
  set nextEpisodeToAir(EpisodeModelBuilder nextEpisodeToAir) =>
      _$this._nextEpisodeToAir = nextEpisodeToAir;

  ListBuilder<NetworksModel> _networks;
  ListBuilder<NetworksModel> get networks =>
      _$this._networks ??= new ListBuilder<NetworksModel>();
  set networks(ListBuilder<NetworksModel> networks) =>
      _$this._networks = networks;

  int _numberOfEpisodes;
  int get numberOfEpisodes => _$this._numberOfEpisodes;
  set numberOfEpisodes(int numberOfEpisodes) =>
      _$this._numberOfEpisodes = numberOfEpisodes;

  int _numberOfSeasons;
  int get numberOfSeasons => _$this._numberOfSeasons;
  set numberOfSeasons(int numberOfSeasons) =>
      _$this._numberOfSeasons = numberOfSeasons;

  ListBuilder<String> _originCountry;
  ListBuilder<String> get originCountry =>
      _$this._originCountry ??= new ListBuilder<String>();
  set originCountry(ListBuilder<String> originCountry) =>
      _$this._originCountry = originCountry;

  String _imdbId;
  String get imdbId => _$this._imdbId;
  set imdbId(String imdbId) => _$this._imdbId = imdbId;

  String _originalLanguage;
  String get originalLanguage => _$this._originalLanguage;
  set originalLanguage(String originalLanguage) =>
      _$this._originalLanguage = originalLanguage;

  String _originalName;
  String get originalName => _$this._originalName;
  set originalName(String originalName) => _$this._originalName = originalName;

  String _overview;
  String get overview => _$this._overview;
  set overview(String overview) => _$this._overview = overview;

  double _popularity;
  double get popularity => _$this._popularity;
  set popularity(double popularity) => _$this._popularity = popularity;

  String _poster;
  String get poster => _$this._poster;
  set poster(String poster) => _$this._poster = poster;

  ListBuilder<ProductionCompaniesModel> _productionCompanies;
  ListBuilder<ProductionCompaniesModel> get productionCompanies =>
      _$this._productionCompanies ??=
          new ListBuilder<ProductionCompaniesModel>();
  set productionCompanies(
          ListBuilder<ProductionCompaniesModel> productionCompanies) =>
      _$this._productionCompanies = productionCompanies;

  ListBuilder<SeasonsModel> _seasons;
  ListBuilder<SeasonsModel> get seasons =>
      _$this._seasons ??= new ListBuilder<SeasonsModel>();
  set seasons(ListBuilder<SeasonsModel> seasons) => _$this._seasons = seasons;

  String _status;
  String get status => _$this._status;
  set status(String status) => _$this._status = status;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  double _voteAverage;
  double get voteAverage => _$this._voteAverage;
  set voteAverage(double voteAverage) => _$this._voteAverage = voteAverage;

  int _voteCount;
  int get voteCount => _$this._voteCount;
  set voteCount(int voteCount) => _$this._voteCount = voteCount;

  TvDetailsModelBuilder();

  TvDetailsModelBuilder get _$this {
    if (_$v != null) {
      _backdrop = _$v.backdrop;
      _createdBy = _$v.createdBy?.toBuilder();
      _episodesRunTime = _$v.episodesRunTime?.toBuilder();
      _firstAirDate = _$v.firstAirDate;
      _genres = _$v.genres?.toBuilder();
      _homepage = _$v.homepage;
      _id = _$v.id;
      _inProduction = _$v.inProduction;
      _languages = _$v.languages?.toBuilder();
      _lastAirDate = _$v.lastAirDate;
      _lastEpisodeToAir = _$v.lastEpisodeToAir?.toBuilder();
      _name = _$v.name;
      _nextEpisodeToAir = _$v.nextEpisodeToAir?.toBuilder();
      _networks = _$v.networks?.toBuilder();
      _numberOfEpisodes = _$v.numberOfEpisodes;
      _numberOfSeasons = _$v.numberOfSeasons;
      _originCountry = _$v.originCountry?.toBuilder();
      _imdbId = _$v.imdbId;
      _originalLanguage = _$v.originalLanguage;
      _originalName = _$v.originalName;
      _overview = _$v.overview;
      _popularity = _$v.popularity;
      _poster = _$v.poster;
      _productionCompanies = _$v.productionCompanies?.toBuilder();
      _seasons = _$v.seasons?.toBuilder();
      _status = _$v.status;
      _type = _$v.type;
      _voteAverage = _$v.voteAverage;
      _voteCount = _$v.voteCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TvDetailsModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TvDetailsModel;
  }

  @override
  void update(void Function(TvDetailsModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TvDetailsModel build() {
    _$TvDetailsModel _$result;
    try {
      _$result = _$v ??
          new _$TvDetailsModel._(
              backdrop: backdrop,
              createdBy: _createdBy?.build(),
              episodesRunTime: episodesRunTime.build(),
              firstAirDate: firstAirDate,
              genres: genres.build(),
              homepage: homepage,
              id: id,
              inProduction: inProduction,
              languages: languages.build(),
              lastAirDate: lastAirDate,
              lastEpisodeToAir: _lastEpisodeToAir?.build(),
              name: name,
              nextEpisodeToAir: _nextEpisodeToAir?.build(),
              networks: networks.build(),
              numberOfEpisodes: numberOfEpisodes,
              numberOfSeasons: numberOfSeasons,
              originCountry: originCountry.build(),
              imdbId: imdbId,
              originalLanguage: originalLanguage,
              originalName: originalName,
              overview: overview,
              popularity: popularity,
              poster: poster,
              productionCompanies: productionCompanies.build(),
              seasons: seasons.build(),
              status: status,
              type: type,
              voteAverage: voteAverage,
              voteCount: voteCount);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'createdBy';
        _createdBy?.build();
        _$failedField = 'episodesRunTime';
        episodesRunTime.build();

        _$failedField = 'genres';
        genres.build();

        _$failedField = 'languages';
        languages.build();

        _$failedField = 'lastEpisodeToAir';
        _lastEpisodeToAir?.build();

        _$failedField = 'nextEpisodeToAir';
        _nextEpisodeToAir?.build();
        _$failedField = 'networks';
        networks.build();

        _$failedField = 'originCountry';
        originCountry.build();

        _$failedField = 'productionCompanies';
        productionCompanies.build();
        _$failedField = 'seasons';
        seasons.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TvDetailsModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
