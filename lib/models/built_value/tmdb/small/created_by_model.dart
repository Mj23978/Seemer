import 'dart:convert';

import "package:built_value/built_value.dart";
import "package:built_value/serializer.dart";

import '../serializers.dart';

part 'created_by_model.g.dart';

abstract class CreatedByModel
    implements Built<CreatedByModel, CreatedByModelBuilder> {
  int get id;

  @nullable
  @BuiltValueField(wireName: 'credit_id')
  String get creditId;

  String get name;

  @nullable
  int get gender;

  @nullable
  @BuiltValueField(wireName: 'profile_path')
  String get image;

  CreatedByModel._();

  factory CreatedByModel([updates(CreatedByModelBuilder b)]) = _$CreatedByModel;

  static Serializer<CreatedByModel> get serializer =>
      _$createdByModelSerializer;
  String toJson() {
    return json
        .encode(serializers.serializeWith(CreatedByModel.serializer, this));
  }

  static CreatedByModel fromJson(String jsonString) {
    return serializers.deserializeWith(
        CreatedByModel.serializer, json.decode(jsonString));
  }
}
