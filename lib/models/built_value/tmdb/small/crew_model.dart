import 'dart:convert';

import "package:built_collection/built_collection.dart";
import "package:built_value/built_value.dart";
import "package:built_value/serializer.dart";

import '../serializers.dart';

part 'crew_model.g.dart';

abstract class CrewModel implements Built<CrewModel, CrewModelBuilder> {
  String get department;

  @BuiltValueField(wireName: 'credit_id')
  String get creditId;

  @nullable
  int get gender;

  int get id;

  String get name;

  String get job;

  @nullable
  int get order;

  @nullable
  @BuiltValueField(wireName: 'profile_path')
  String get image;

  CrewModel._();

  factory CrewModel([updates(CrewModelBuilder b)]) = _$CrewModel;

  static Serializer<CrewModel> get serializer => _$crewModelSerializer;
  String toJson() {
    return json.encode(serializers.serializeWith(CrewModel.serializer, this));
  }

  static CrewModel fromJson(String jsonString) {
    return serializers.deserializeWith(
        CrewModel.serializer, json.decode(jsonString));
  }
}
