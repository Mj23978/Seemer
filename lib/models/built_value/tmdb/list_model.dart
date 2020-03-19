import 'dart:convert';

import "package:built_collection/built_collection.dart";
import "package:built_value/built_value.dart";
import "package:built_value/serializer.dart";

import './base_model.dart';
import './small/created_by_model.dart';

import './serializers.dart';

part 'list_model.g.dart';

abstract class ListModel implements Built<ListModel, ListModelBuilder> {
  @nullable
  @BuiltValueField(wireName: 'poster_path')
  String get poster;

  int get id;

  @nullable
  @BuiltValueField(wireName: 'backdrop_path')
  String get backdrop;

  @BuiltValueField(wireName: 'total_results')
  int get totalResults;

  bool get public;

  int get page;

  String get revenue;

  BuiltList<BaseModel> get results;

  @BuiltValueField(wireName: 'iso_639_1')
  String get language;

  @BuiltValueField(wireName: 'total_pages')
  int get totalPages;

  String get description;

  @BuiltValueField(wireName: 'created_by')
  CreatedByModel get createdBy;

  @BuiltValueField(wireName: 'iso_3166_1')
  String get country;

  @BuiltValueField(wireName: 'average_rating')
  double get averageRating;

  int get runtime;

  String get name;

  ListModel._();

  factory ListModel([updates(ListModelBuilder b)]) = _$ListModel;

  static Serializer<ListModel> get serializer => _$listModelSerializer;
  String toJson() {
    return json.encode(serializers.serializeWith(ListModel.serializer, this));
  }

  static ListModel fromJson(String jsonString) {
    return serializers.deserializeWith(
        ListModel.serializer, json.decode(jsonString));
  }
}
