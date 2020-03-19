// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BaseModel> _$baseModelSerializer = new _$BaseModelSerializer();

class _$BaseModelSerializer implements StructuredSerializer<BaseModel> {
  @override
  final Iterable<Type> types = const [BaseModel, _$BaseModel];
  @override
  final String wireName = 'BaseModel';

  @override
  Iterable<Object> serialize(Serializers serializers, BaseModel object,
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
    if (object.adult != null) {
      result
        ..add('adult')
        ..add(serializers.serialize(object.adult,
            specifiedType: const FullType(bool)));
    }
    if (object.releaseDate != null) {
      result
        ..add('release_date')
        ..add(serializers.serialize(object.releaseDate,
            specifiedType: const FullType(String)));
    }
    if (object.originalTitle != null) {
      result
        ..add('original_title')
        ..add(serializers.serialize(object.originalTitle,
            specifiedType: const FullType(String)));
    }
    if (object.backdropPath != null) {
      result
        ..add('backdrop_path')
        ..add(serializers.serialize(object.backdropPath,
            specifiedType: const FullType(String)));
    }
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.generalIds != null) {
      result
        ..add('general_ids')
        ..add(serializers.serialize(object.generalIds,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }
    if (object.mediaType != null) {
      result
        ..add('media_type')
        ..add(serializers.serialize(object.mediaType,
            specifiedType: const FullType(String)));
    }
    if (object.firstAirDate != null) {
      result
        ..add('first_air_date')
        ..add(serializers.serialize(object.firstAirDate,
            specifiedType: const FullType(String)));
    }
    if (object.originCountry != null) {
      result
        ..add('origin_country')
        ..add(serializers.serialize(object.originCountry,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.genreIDs != null) {
      result
        ..add('genre_ids')
        ..add(serializers.serialize(object.genreIDs,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }
    if (object.originalLanguage != null) {
      result
        ..add('original_language')
        ..add(serializers.serialize(object.originalLanguage,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.rating != null) {
      result
        ..add('rating')
        ..add(serializers.serialize(object.rating,
            specifiedType: const FullType(int)));
    }
    if (object.originalName != null) {
      result
        ..add('original_name')
        ..add(serializers.serialize(object.originalName,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  BaseModel deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BaseModelBuilder();

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
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'popularity':
          result.popularity = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'release_date':
          result.releaseDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'original_title':
          result.originalTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'general_ids':
          result.generalIds.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))
              as BuiltList<dynamic>);
          break;
        case 'media_type':
          result.mediaType = serializers.deserialize(value,
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
      }
    }

    return result.build();
  }
}

class _$BaseModel extends BaseModel {
  @override
  final String posterPath;
  @override
  final bool adult;
  @override
  final double popularity;
  @override
  final String releaseDate;
  @override
  final String originalTitle;
  @override
  final int id;
  @override
  final String backdropPath;
  @override
  final double voteAverage;
  @override
  final String overview;
  @override
  final String title;
  @override
  final BuiltList<int> generalIds;
  @override
  final String mediaType;
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

  factory _$BaseModel([void Function(BaseModelBuilder) updates]) =>
      (new BaseModelBuilder()..update(updates)).build();

  _$BaseModel._(
      {this.posterPath,
      this.adult,
      this.popularity,
      this.releaseDate,
      this.originalTitle,
      this.id,
      this.backdropPath,
      this.voteAverage,
      this.overview,
      this.title,
      this.generalIds,
      this.mediaType,
      this.firstAirDate,
      this.originCountry,
      this.genreIDs,
      this.originalLanguage,
      this.voteCount,
      this.name,
      this.rating,
      this.originalName})
      : super._() {
    if (popularity == null) {
      throw new BuiltValueNullFieldError('BaseModel', 'popularity');
    }
    if (id == null) {
      throw new BuiltValueNullFieldError('BaseModel', 'id');
    }
    if (voteAverage == null) {
      throw new BuiltValueNullFieldError('BaseModel', 'voteAverage');
    }
    if (overview == null) {
      throw new BuiltValueNullFieldError('BaseModel', 'overview');
    }
    if (voteCount == null) {
      throw new BuiltValueNullFieldError('BaseModel', 'voteCount');
    }
  }

  @override
  BaseModel rebuild(void Function(BaseModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BaseModelBuilder toBuilder() => new BaseModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BaseModel &&
        posterPath == other.posterPath &&
        adult == other.adult &&
        popularity == other.popularity &&
        releaseDate == other.releaseDate &&
        originalTitle == other.originalTitle &&
        id == other.id &&
        backdropPath == other.backdropPath &&
        voteAverage == other.voteAverage &&
        overview == other.overview &&
        title == other.title &&
        generalIds == other.generalIds &&
        mediaType == other.mediaType &&
        firstAirDate == other.firstAirDate &&
        originCountry == other.originCountry &&
        genreIDs == other.genreIDs &&
        originalLanguage == other.originalLanguage &&
        voteCount == other.voteCount &&
        name == other.name &&
        rating == other.rating &&
        originalName == other.originalName;
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
                                                                            $jc($jc(0, posterPath.hashCode),
                                                                                adult.hashCode),
                                                                            popularity.hashCode),
                                                                        releaseDate.hashCode),
                                                                    originalTitle.hashCode),
                                                                id.hashCode),
                                                            backdropPath.hashCode),
                                                        voteAverage.hashCode),
                                                    overview.hashCode),
                                                title.hashCode),
                                            generalIds.hashCode),
                                        mediaType.hashCode),
                                    firstAirDate.hashCode),
                                originCountry.hashCode),
                            genreIDs.hashCode),
                        originalLanguage.hashCode),
                    voteCount.hashCode),
                name.hashCode),
            rating.hashCode),
        originalName.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BaseModel')
          ..add('posterPath', posterPath)
          ..add('adult', adult)
          ..add('popularity', popularity)
          ..add('releaseDate', releaseDate)
          ..add('originalTitle', originalTitle)
          ..add('id', id)
          ..add('backdropPath', backdropPath)
          ..add('voteAverage', voteAverage)
          ..add('overview', overview)
          ..add('title', title)
          ..add('generalIds', generalIds)
          ..add('mediaType', mediaType)
          ..add('firstAirDate', firstAirDate)
          ..add('originCountry', originCountry)
          ..add('genreIDs', genreIDs)
          ..add('originalLanguage', originalLanguage)
          ..add('voteCount', voteCount)
          ..add('name', name)
          ..add('rating', rating)
          ..add('originalName', originalName))
        .toString();
  }
}

class BaseModelBuilder implements Builder<BaseModel, BaseModelBuilder> {
  _$BaseModel _$v;

  String _posterPath;
  String get posterPath => _$this._posterPath;
  set posterPath(String posterPath) => _$this._posterPath = posterPath;

  bool _adult;
  bool get adult => _$this._adult;
  set adult(bool adult) => _$this._adult = adult;

  double _popularity;
  double get popularity => _$this._popularity;
  set popularity(double popularity) => _$this._popularity = popularity;

  String _releaseDate;
  String get releaseDate => _$this._releaseDate;
  set releaseDate(String releaseDate) => _$this._releaseDate = releaseDate;

  String _originalTitle;
  String get originalTitle => _$this._originalTitle;
  set originalTitle(String originalTitle) =>
      _$this._originalTitle = originalTitle;

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

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  ListBuilder<int> _generalIds;
  ListBuilder<int> get generalIds =>
      _$this._generalIds ??= new ListBuilder<int>();
  set generalIds(ListBuilder<int> generalIds) =>
      _$this._generalIds = generalIds;

  String _mediaType;
  String get mediaType => _$this._mediaType;
  set mediaType(String mediaType) => _$this._mediaType = mediaType;

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

  BaseModelBuilder();

  BaseModelBuilder get _$this {
    if (_$v != null) {
      _posterPath = _$v.posterPath;
      _adult = _$v.adult;
      _popularity = _$v.popularity;
      _releaseDate = _$v.releaseDate;
      _originalTitle = _$v.originalTitle;
      _id = _$v.id;
      _backdropPath = _$v.backdropPath;
      _voteAverage = _$v.voteAverage;
      _overview = _$v.overview;
      _title = _$v.title;
      _generalIds = _$v.generalIds?.toBuilder();
      _mediaType = _$v.mediaType;
      _firstAirDate = _$v.firstAirDate;
      _originCountry = _$v.originCountry?.toBuilder();
      _genreIDs = _$v.genreIDs?.toBuilder();
      _originalLanguage = _$v.originalLanguage;
      _voteCount = _$v.voteCount;
      _name = _$v.name;
      _rating = _$v.rating;
      _originalName = _$v.originalName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BaseModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BaseModel;
  }

  @override
  void update(void Function(BaseModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BaseModel build() {
    _$BaseModel _$result;
    try {
      _$result = _$v ??
          new _$BaseModel._(
              posterPath: posterPath,
              adult: adult,
              popularity: popularity,
              releaseDate: releaseDate,
              originalTitle: originalTitle,
              id: id,
              backdropPath: backdropPath,
              voteAverage: voteAverage,
              overview: overview,
              title: title,
              generalIds: _generalIds?.build(),
              mediaType: mediaType,
              firstAirDate: firstAirDate,
              originCountry: _originCountry?.build(),
              genreIDs: _genreIDs?.build(),
              originalLanguage: originalLanguage,
              voteCount: voteCount,
              name: name,
              rating: rating,
              originalName: originalName);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'generalIds';
        _generalIds?.build();

        _$failedField = 'originCountry';
        _originCountry?.build();
        _$failedField = 'genreIDs';
        _genreIDs?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BaseModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
