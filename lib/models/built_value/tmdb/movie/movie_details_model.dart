import 'dart:convert';

import "package:built_collection/built_collection.dart";
import "package:built_value/built_value.dart";
import "package:built_value/serializer.dart";

import '../small/networks_model.dart';
import '../small/production_countries_model.dart';
import '../small/production_companies_model.dart';
import '../serializers.dart';
import '../small/genres_model.dart';

part 'movie_details_model.g.dart';

abstract class MovieDetailsModel
    implements Built<MovieDetailsModel, MovieDetailsModelBuilder> {
  bool get adult;

  @nullable
  @BuiltValueField(wireName: 'backdrop_path')
  String get backdropPath;

  int get budget;

  GenresModel get genres;

  @nullable
  String get homepage;

  int get id;

  @BuiltValueField(wireName: 'imdb_id')
  String get imdbId;

  @BuiltValueField(wireName: 'original_language')
  String get originalLanguage;

  @BuiltValueField(wireName: 'original_title')
  String get originalTitle;

  @nullable
  BuiltList<NetworksModel> get networks;

  String get overview;

  double get popularity;

  @nullable
  @BuiltValueField(wireName: 'poster_path')
  String get posterPath;

  @BuiltValueField(wireName: 'production_companies')
  BuiltList<ProductionCompaniesModel> get productionCompanies;

  @BuiltValueField(wireName: 'production_countries')
  BuiltList<ProductionCountriesModel> get productionCountries;

  @BuiltValueField(wireName: 'release_date')
  String get releaseDate;

  int get revenue;

  @BuiltValueField(wireName: 'spoken_languages')
  String get spokenLanguages;

  String get status;

  @BuiltValueField(wireName: 'tagline')
  String get tagLine;

  String get title;

  String get video;

  @BuiltValueField(wireName: 'vote_average')
  double get voteAverage;

  @BuiltValueField(wireName: 'vote_count')
  int get voteCount;

  MovieDetailsModel._();

  factory MovieDetailsModel([updates(MovieDetailsModelBuilder b)]) =
      _$MovieDetailsModel;

  static Serializer<MovieDetailsModel> get serializer =>
      _$movieDetailsModelSerializer;
  String toJson() {
    return json
        .encode(serializers.serializeWith(MovieDetailsModel.serializer, this));
  }

  static MovieDetailsModel fromJson(String jsonString) {
    return serializers.deserializeWith(
        MovieDetailsModel.serializer, json.decode(jsonString));
  }
}
