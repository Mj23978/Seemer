import 'dart:convert';

import "package:built_collection/built_collection.dart";
import "package:built_value/built_value.dart";
import "package:built_value/serializer.dart";
import 'movie/base_movie_model.dart';

import './serializers.dart';

part 'collection_model.g.dart';

abstract class CollectionModel
    implements Built<CollectionModel, CollectionModelBuilder> {
  @nullable
  int get id;

  BuiltList<BaseMovieResults> get parts;

  String get name;

  String get overview;

  @BuiltValueField(wireName: 'poster_path')
  String get poster;

  @BuiltValueField(wireName: 'backdrop_path')
  String get backdrop;

  CollectionModel._();

  factory CollectionModel([updates(CollectionModelBuilder b)]) =
      _$CollectionModel;

  static Serializer<CollectionModel> get serializer =>
      _$collectionModelSerializer;
  String toJson() {
    return json
        .encode(serializers.serializeWith(CollectionModel.serializer, this));
  }

  static CollectionModel fromJson(String jsonString) {
    return serializers.deserializeWith(
        CollectionModel.serializer, json.decode(jsonString));
  }
}
