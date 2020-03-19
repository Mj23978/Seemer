import 'dart:convert';

import "package:built_collection/built_collection.dart";
import "package:built_value/built_value.dart";
import "package:built_value/serializer.dart";

import '../serializers.dart';

part 'base_movie_model.g.dart';

abstract class BaseMovieModel
    implements Built<BaseMovieModel, BaseMovieModelBuilder> {
  @nullable
  int get page;

  BuiltList<BaseMovieResults> get results;

  @nullable
  @BuiltValueField(wireName: 'total_results')
  int get totalResults;

  @nullable
  @BuiltValueField(wireName: 'total_pages')
  int get totalPages;

  BaseMovieModel._();

  factory BaseMovieModel([updates(BaseMovieModelBuilder b)]) = _$BaseMovieModel;

  static Serializer<BaseMovieModel> get serializer =>
      _$baseMovieModelSerializer;
  String toJson() {
    return json
        .encode(serializers.serializeWith(BaseMovieModel.serializer, this));
  }

  static BaseMovieModel fromJson(String jsonString) {
    return serializers.deserializeWith(
        BaseMovieModel.serializer, json.decode(jsonString));
  }
}

abstract class BaseMovieResults
    implements Built<BaseMovieResults, BaseMovieResultsBuilder> {
  @nullable
  @BuiltValueField(wireName: 'poster_path')
  String get posterPath;

  String get adult;

  String get overview;

  @BuiltValueField(wireName: 'release_date')
  String get releaseDate;

  @BuiltValueField(wireName: 'genre_ids')
  BuiltList<int> get genreIDs;

  int get id;

  @BuiltValueField(wireName: 'original_title')
  String get originalTitle;

  @BuiltValueField(wireName: 'original_language')
  String get originalLanguage;

  String get title;

  double get popularity;

  @nullable
  @BuiltValueField(wireName: 'backdrop_path')
  String get backdropPath;

  @BuiltValueField(wireName: 'vote_average')
  double get voteAverage;

  @nullable
  BuiltList<String> get video;

  @BuiltValueField(wireName: 'vote_count')
  int get voteCount;

  @nullable
  int get rating;

  @nullable
  String get character;

  @nullable
  @BuiltValueField(wireName: 'credit_id')
  String get creditId;

  @nullable
  String get department;

  @nullable
  String get job;

  BaseMovieResults._();

  factory BaseMovieResults([updates(BaseMovieResultsBuilder b)]) =
      _$BaseMovieResults;

  static Serializer<BaseMovieResults> get serializer =>
      _$baseMovieResultsSerializer;
  String toJson() {
    return json
        .encode(serializers.serializeWith(BaseMovieResults.serializer, this));
  }

  static BaseMovieResults fromJson(String jsonString) {
    return serializers.deserializeWith(
        BaseMovieResults.serializer, json.decode(jsonString));
  }
}
