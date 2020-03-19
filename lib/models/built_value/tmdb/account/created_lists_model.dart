import 'dart:convert';

import "package:built_collection/built_collection.dart";
import "package:built_value/built_value.dart";
import "package:built_value/serializer.dart";

import '../serializers.dart';

part 'created_lists_model.g.dart';

abstract class CreatedListsModel
    implements Built<CreatedListsModel, CreatedListsModelBuilder> {
  @nullable
  int get page;

  BuiltList<CreatedListsModel> get results;

  @nullable
  @BuiltValueField(wireName: 'total_results')
  int get totalResults;

  @nullable
  @BuiltValueField(wireName: 'total_pages')
  int get totalPages;

  CreatedListsModel._();

  factory CreatedListsModel([updates(CreatedListsModelBuilder b)]) =
      _$CreatedListsModel;

  static Serializer<CreatedListsModel> get serializer =>
      _$createdListsModelSerializer;
  String toJson() {
    return json
        .encode(serializers.serializeWith(CreatedListsModel.serializer, this));
  }

  static CreatedListsModel fromJson(String jsonString) {
    return serializers.deserializeWith(
        CreatedListsModel.serializer, json.decode(jsonString));
  }
}

abstract class CreatedListsResults
    implements Built<CreatedListsResults, CreatedListsResultsBuilder> {
  @nullable
  @BuiltValueField(wireName: 'poster_path')
  String get posterPath;

  String get name;

  int get id;

  String get description;

  @BuiltValueField(wireName: 'iso_639_1')
  String get countryLanguage;

  int get featured;

  String get revenue;

  bool get public;

  @BuiltValueField(wireName: 'updated_at')
  String get updatedAt;

  @BuiltValueField(wireName: 'created_at')
  String get createdAt;

  @nullable
  @BuiltValueField(wireName: 'sort_by')
  int get sortBy;

  @nullable
  @BuiltValueField(wireName: 'backdrop_path')
  String get backdropPath;

  int get runtime;

  @BuiltValueField(wireName: 'average_rating')
  double get averageRating;

  @BuiltValueField(wireName: 'iso_3166_1')
  String get country;

  int get adult;

  @BuiltValueField(wireName: 'number_of_items')
  int get numberOfItems;

  CreatedListsResults._();

  factory CreatedListsResults([updates(CreatedListsResultsBuilder b)]) =
      _$CreatedListsResults;

  static Serializer<CreatedListsResults> get serializer =>
      _$createdListsResultsSerializer;
  String toJson() {
    return json.encode(
        serializers.serializeWith(CreatedListsResults.serializer, this));
  }

  static CreatedListsResults fromJson(String jsonString) {
    return serializers.deserializeWith(
        CreatedListsResults.serializer, json.decode(jsonString));
  }
}
