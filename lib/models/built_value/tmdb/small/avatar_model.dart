import 'dart:convert';

import "package:built_value/built_value.dart";
import "package:built_value/serializer.dart";

import '../serializers.dart';

part 'avatar_model.g.dart';

abstract class AvatarModel implements Built<AvatarModel, AvatarModelBuilder> {
  @nullable
  Gravatar get gravatar;

  AvatarModel._();

  factory AvatarModel([updates(AvatarModelBuilder b)]) = _$AvatarModel;

  static Serializer<AvatarModel> get serializer => _$avatarModelSerializer;
  String toJson() {
    return json.encode(serializers.serializeWith(AvatarModel.serializer, this));
  }

  static AvatarModel fromJson(String jsonString) {
    return serializers.deserializeWith(
        AvatarModel.serializer, json.decode(jsonString));
  }
}

abstract class Gravatar implements Built<Gravatar, GravatarBuilder> {
  String get hash;

  Gravatar._();

  factory Gravatar([updates(GravatarBuilder b)]) = _$Gravatar;

  static Serializer<Gravatar> get serializer => _$gravatarSerializer;
  String toJson() {
    return json.encode(serializers.serializeWith(Gravatar.serializer, this));
  }

  static Gravatar fromJson(String jsonString) {
    return serializers.deserializeWith(
        Gravatar.serializer, json.decode(jsonString));
  }
}
