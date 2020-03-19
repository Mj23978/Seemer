import 'dart:convert';

import "package:built_collection/built_collection.dart";
import "package:built_value/built_value.dart";
import "package:built_value/serializer.dart";

import './serializers.dart';

part 'videos_model.g.dart';

abstract class VideosModel implements Built<VideosModel, VideosModelBuilder> {
  @nullable
  int get id;

  BuiltList<VideosResults> get results;

  VideosModel._();

  factory VideosModel([updates(VideosModelBuilder b)]) = _$VideosModel;

  static Serializer<VideosModel> get serializer => _$videosModelSerializer;
  String toJson() {
    return json.encode(serializers.serializeWith(VideosModel.serializer, this));
  }

  static VideosModel fromJson(String jsonString) {
    return serializers.deserializeWith(
        VideosModel.serializer, json.decode(jsonString));
  }
}

abstract class VideosResults
    implements Built<VideosResults, VideosResultsBuilder> {
  int get id;

  @BuiltValueField(wireName: 'iso_639_1')
  String get language;

  @BuiltValueField(wireName: 'iso_3166')
  String get country;

  String get key;

  String get name;

  String get site;

  int get size; //720

  String get type; // Trailer

  VideosResults._();

  factory VideosResults([updates(VideosResultsBuilder b)]) = _$VideosResults;

  static Serializer<VideosResults> get serializer => _$videosResultsSerializer;
  String toJson() {
    return json
        .encode(serializers.serializeWith(VideosResults.serializer, this));
  }

  static VideosResults fromJson(String jsonString) {
    return serializers.deserializeWith(
        VideosResults.serializer, json.decode(jsonString));
  }
}
