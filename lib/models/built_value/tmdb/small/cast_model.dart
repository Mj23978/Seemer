import 'dart:convert';

import "package:built_collection/built_collection.dart";
import "package:built_value/built_value.dart";
import "package:built_value/serializer.dart";

import '../serializers.dart';

part 'cast_model.g.dart';

abstract class CastModel implements Built<CastModel, CastModelBuilder> {
  String get character;

  @BuiltValueField(wireName: 'credit_id')
  String get creditId;

  @nullable
  int get gender;

  int get id;

  @nullable
  String get name;

  int get order;

  @nullable
  @BuiltValueField(wireName: 'profile_path')
  String get image;

  CastModel._();

  factory CastModel([updates(CastModelBuilder b)]) = _$CastModel;

  static Serializer<CastModel> get serializer => _$castModelSerializer;
  String toJson() {
    return json.encode(serializers.serializeWith(CastModel.serializer, this));
  }

  static CastModel fromJson(String jsonString) {
    return serializers.deserializeWith(
        CastModel.serializer, json.decode(jsonString));
  }
}
