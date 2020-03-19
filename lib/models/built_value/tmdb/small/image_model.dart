import 'dart:convert';

import "package:built_collection/built_collection.dart";
import "package:built_value/built_value.dart";
import "package:built_value/serializer.dart";

import '../serializers.dart';

part 'image_model.g.dart';

abstract class ImageModel implements Built<ImageModel, ImageModelBuilder> {
  int get width;

  int get height;

  @BuiltValueField(wireName: 'aspect_ratio')
  double get aspectRatio;

  @BuiltValueField(wireName: 'file_path')
  String get filePath;

  @nullable
  @BuiltValueField(wireName: 'iso_639_1')
  String get imageLanguage;

  @BuiltValueField(wireName: 'vote_average')
  int get voteAverage;

  @BuiltValueField(wireName: 'vote_count')
  int get voteCount;

  ImageModel._();

  factory ImageModel([updates(ImageModelBuilder b)]) = _$ImageModel;

  static Serializer<ImageModel> get serializer => _$imageModelSerializer;
  String toJson() {
    return json.encode(serializers.serializeWith(ImageModel.serializer, this));
  }

  static ImageModel fromJson(String jsonString) {
    return serializers.deserializeWith(
        ImageModel.serializer, json.decode(jsonString));
  }
}
