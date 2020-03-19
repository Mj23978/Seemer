import 'dart:convert';

import "package:built_collection/built_collection.dart";
import "package:built_value/built_value.dart";
import "package:built_value/serializer.dart";

import '../small/created_by_model.dart';
import '../small/episode_model.dart';
import '../small/networks_model.dart';
import '../small/seasons_model.dart';
import '../small/production_companies_model.dart';
import '../small/genres_model.dart';

import '../serializers.dart';

part 'tv_details_model.g.dart';

abstract class TvDetailsModel
    implements Built<TvDetailsModel, TvDetailsModelBuilder> {
  @nullable
  @BuiltValueField(wireName: 'backdrop_path')
  String get backdrop;

  @nullable
  @BuiltValueField(wireName: 'created_by')
  BuiltList<CreatedByModel> get createdBy;

  @BuiltValueField(wireName: 'episodes_run_time')
  BuiltList<int> get episodesRunTime;

  @BuiltValueField(wireName: 'first_air_date')
  String get firstAirDate;

  BuiltList<GenresModel> get genres;

  @nullable
  String get homepage;

  int get id;

  @BuiltValueField(wireName: 'in_production')
  bool get inProduction;

  BuiltList<String> get languages;

  @BuiltValueField(wireName: 'last_air_date')
  String get lastAirDate;

  @nullable
  @BuiltValueField(wireName: 'last_episode_to_air')
  EpisodeModel get lastEpisodeToAir;

  String get name;

  @nullable
  @BuiltValueField(wireName: 'next_episode_to_air')
  EpisodeModel get nextEpisodeToAir;

  BuiltList<NetworksModel> get networks;

  @BuiltValueField(wireName: 'number_of_episodes')
  int get numberOfEpisodes;

  @BuiltValueField(wireName: 'number_of_seasons')
  int get numberOfSeasons;

  @BuiltValueField(wireName: 'origin_country')
  BuiltList<String> get originCountry;

  @nullable
  @BuiltValueField(wireName: 'imdb_id')
  String get imdbId;

  @BuiltValueField(wireName: 'original_language')
  String get originalLanguage;

  @BuiltValueField(wireName: 'original_name')
  String get originalName;

  String get overview;

  double get popularity;

  @nullable
  @BuiltValueField(wireName: 'poster_path')
  String get poster;

  @BuiltValueField(wireName: 'production_companies')
  BuiltList<ProductionCompaniesModel> get productionCompanies;

  BuiltList<SeasonsModel> get seasons;

  String get status;

  @nullable
  String get type;

  @BuiltValueField(wireName: 'vote_average')
  double get voteAverage;

  @BuiltValueField(wireName: 'vote_count')
  int get voteCount;

  TvDetailsModel._();

  factory TvDetailsModel([updates(TvDetailsModelBuilder b)]) = _$TvDetailsModel;

  static Serializer<TvDetailsModel> get serializer =>
      _$tvDetailsModelSerializer;
  String toJson() {
    return json
        .encode(serializers.serializeWith(TvDetailsModel.serializer, this));
  }

  static TvDetailsModel fromJson(String jsonString) {
    return serializers.deserializeWith(
        TvDetailsModel.serializer, json.decode(jsonString));
  }
}
