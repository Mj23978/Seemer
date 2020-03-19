import 'dart:convert';

import "package:built_value/built_value.dart";
import "package:built_value/serializer.dart";
import 'package:built_collection/built_collection.dart';

import './serializers.dart';

import './small/cast_model.dart';
import './small/crew_model.dart';

part 'credits_model.g.dart';

abstract class CreditsModel
    implements Built<CreditsModel, CreditsModelBuilder> {
  int get id;

  BuiltList<CastModel> get cast;

  BuiltList<CrewModel> get crew;

  CreditsModel._();

  factory CreditsModel([updates(CreditsModelBuilder b)]) = _$CreditsModel;

  static Serializer<CreditsModel> get serializer => _$creditsModelSerializer;
  String toJson() {
    return json
        .encode(serializers.serializeWith(CreditsModel.serializer, this));
  }

  static CreditsModel fromJson(String jsonString) {
    return serializers.deserializeWith(
        CreditsModel.serializer, json.decode(jsonString));
  }
}
