import 'dart:convert';

import "package:built_value/built_value.dart";
import "package:built_value/serializer.dart";

import '../serializers.dart';

part 'rated_model.g.dart';

abstract class RatedModel implements Built<RatedModel, RatedModelBuilder> {
  int get value;

  RatedModel._();

  factory RatedModel([updates(RatedModelBuilder b)]) = _$RatedModel;

  static Serializer<RatedModel> get serializer => _$ratedModelSerializer;
  String toJson() {
    return json.encode(serializers.serializeWith(RatedModel.serializer, this));
  }

  static RatedModel fromJson(String jsonString) {
    return serializers.deserializeWith(
        RatedModel.serializer, json.decode(jsonString));
  }
}
