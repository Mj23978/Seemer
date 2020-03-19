import 'dart:convert';

import "package:built_collection/built_collection.dart";
import "package:built_value/built_value.dart";
import "package:built_value/serializer.dart";

import './serializers.dart';

part 'images_model.g.dart';

abstract class ImagesModel implements Built<ImagesModel, ImagesModelBuilder> {
  int get id;

  BuiltList<ImagesModel> get backdrops;

  BuiltList<ImagesModel> get posters;

  ImagesModel._();

  factory ImagesModel([updates(ImagesModelBuilder b)]) = _$ImagesModel;

  static Serializer<ImagesModel> get serializer => _$imagesModelSerializer;
  String toJson() {
    return json.encode(serializers.serializeWith(ImagesModel.serializer, this));
  }

  static ImagesModel fromJson(String jsonString) {
    return serializers.deserializeWith(
        ImagesModel.serializer, json.decode(jsonString));
  }
}
