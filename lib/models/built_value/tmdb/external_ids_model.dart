import 'dart:convert';

import "package:built_collection/built_collection.dart";
import "package:built_value/built_value.dart";
import "package:built_value/serializer.dart";

import './serializers.dart';

part 'external_ids_model.g.dart';

abstract class ExternalIDsModel
    implements Built<ExternalIDsModel, ExternalIDsModelBuilder> {
  int get id;

  @nullable
  @BuiltValueField(wireName: 'imdb_id')
  String get imdbId;

  @nullable
  @BuiltValueField(wireName: 'tvdb_id')
  String get tvDBId;

  @nullable
  @BuiltValueField(wireName: 'instagram_id')
  String get instagramId;

  @nullable
  @BuiltValueField(wireName: 'twitter_id')
  String get twitterId;

  ExternalIDsModel._();

  factory ExternalIDsModel([updates(ExternalIDsModelBuilder b)]) =
      _$ExternalIDsModel;

  static Serializer<ExternalIDsModel> get serializer =>
      _$externalIDsModelSerializer;
  String toJson() {
    return json
        .encode(serializers.serializeWith(ExternalIDsModel.serializer, this));
  }

  static ExternalIDsModel fromJson(String jsonString) {
    return serializers.deserializeWith(
        ExternalIDsModel.serializer, json.decode(jsonString));
  }
}
