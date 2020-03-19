import 'dart:convert';

import "package:built_collection/built_collection.dart";
import "package:built_value/built_value.dart";
import "package:built_value/serializer.dart";
import '../tv/base_tv_model.dart';

import '../serializers.dart';

part 'people_tv_model.g.dart';

abstract class PeopleTvModel
    implements Built<PeopleTvModel, PeopleTvModelBuilder> {
  @nullable
  int get id;

  BuiltList<BaseTvResults> get cast;

  BuiltList<BaseTvResults> get crew;

  PeopleTvModel._();

  factory PeopleTvModel([updates(PeopleTvModelBuilder b)]) = _$PeopleTvModel;

  static Serializer<PeopleTvModel> get serializer => _$peopleTvModelSerializer;
  String toJson() {
    return json
        .encode(serializers.serializeWith(PeopleTvModel.serializer, this));
  }

  static PeopleTvModel fromJson(String jsonString) {
    return serializers.deserializeWith(
        PeopleTvModel.serializer, json.decode(jsonString));
  }
}
