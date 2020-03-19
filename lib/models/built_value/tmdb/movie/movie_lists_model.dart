import 'dart:convert';

import "package:built_collection/built_collection.dart";
import "package:built_value/built_value.dart";
import "package:built_value/serializer.dart";

import '../serializers.dart';

part 'movie_lists_model.g.dart';

abstract class MovieListsModel
    implements Built<MovieListsModel, MovieListsModelBuilder> {
  @nullable
  int get page;

  @nullable
  int get id;

  BuiltList<MovieListsResults> get results;

  @nullable
  @BuiltValueField(wireName: 'total_results')
  int get totalResults;

  @nullable
  @BuiltValueField(wireName: 'total_pages')
  int get totalPages;

  MovieListsModel._();

  factory MovieListsModel([updates(MovieListsModelBuilder b)]) =
      _$MovieListsModel;

  static Serializer<MovieListsModel> get serializer =>
      _$movieListsModelSerializer;
  String toJson() {
    return json
        .encode(serializers.serializeWith(MovieListsModel.serializer, this));
  }

  static MovieListsModel fromJson(String jsonString) {
    return serializers.deserializeWith(
        MovieListsModel.serializer, json.decode(jsonString));
  }
}

abstract class MovieListsResults
    implements Built<MovieListsResults, MovieListsResultsBuilder> {
  @nullable
  @BuiltValueField(wireName: 'poster_path')
  String get posterPath;

  int get id;

  String get description;

  @BuiltValueField(wireName: 'favorite_count')
  int get favoriteCount;

  @BuiltValueField(wireName: 'item_count')
  int get itemCount;

  @BuiltValueField(wireName: 'iso_639_1')
  String get language;

  @BuiltValueField(wireName: 'list_type')
  String get listType;

  String get name;

  MovieListsResults._();

  factory MovieListsResults([updates(MovieListsResultsBuilder b)]) =
      _$MovieListsResults;

  static Serializer<MovieListsResults> get serializer =>
      _$movieListsResultsSerializer;
  String toJson() {
    return json
        .encode(serializers.serializeWith(MovieListsResults.serializer, this));
  }

  static MovieListsResults fromJson(String jsonString) {
    return serializers.deserializeWith(
        MovieListsResults.serializer, json.decode(jsonString));
  }
}
