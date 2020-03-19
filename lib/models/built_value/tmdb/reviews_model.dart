import 'dart:convert';

import "package:built_collection/built_collection.dart";
import "package:built_value/built_value.dart";
import "package:built_value/serializer.dart";

import './serializers.dart';

part 'reviews_model.g.dart';

abstract class ReviewsModel
    implements Built<ReviewsModel, ReviewsModelBuilder> {
  @nullable
  int get page;

  @nullable
  int get id;

  BuiltList<ReviewsResults> get results;

  @nullable
  @BuiltValueField(wireName: 'total_results')
  int get totalResults;

  @nullable
  @BuiltValueField(wireName: 'total_pages')
  int get totalPages;

  ReviewsModel._();

  factory ReviewsModel([updates(ReviewsModelBuilder b)]) = _$ReviewsModel;

  static Serializer<ReviewsModel> get serializer => _$reviewsModelSerializer;
  String toJson() {
    return json
        .encode(serializers.serializeWith(ReviewsModel.serializer, this));
  }

  static ReviewsModel fromJson(String jsonString) {
    return serializers.deserializeWith(
        ReviewsModel.serializer, json.decode(jsonString));
  }
}

abstract class ReviewsResults
    implements Built<ReviewsResults, ReviewsResultsBuilder> {
  int get id;

  String get author;

  String get content;

  String get url;

  @nullable
  @BuiltValueField(wireName: 'iso_639_1')
  String get language;

  @nullable
  @BuiltValueField(wireName: 'media_id')
  String get mediaId;

  @nullable
  @BuiltValueField(wireName: 'media_title')
  String get mediaTitle;

  @nullable
  @BuiltValueField(wireName: 'media_type')
  String get mediaType;

  ReviewsResults._();

  factory ReviewsResults([updates(ReviewsResultsBuilder b)]) = _$ReviewsResults;

  static Serializer<ReviewsResults> get serializer =>
      _$reviewsResultsSerializer;
  String toJson() {
    return json
        .encode(serializers.serializeWith(ReviewsResults.serializer, this));
  }

  static ReviewsResults fromJson(String jsonString) {
    return serializers.deserializeWith(
        ReviewsResults.serializer, json.decode(jsonString));
  }
}
