import 'dart:convert';

import "package:built_value/built_value.dart";
import "package:built_value/serializer.dart";

import '../serializers.dart';

part 'networks_model.g.dart';

abstract class NetworksModel
    implements Built<NetworksModel, NetworksModelBuilder> {
  int get id;

  @nullable
  @BuiltValueField(wireName: 'logo_path')
  String get logo;

  String get name;

  @BuiltValueField(wireName: 'origin_country')
  String get originCountry;

  @nullable
  @BuiltValueField(wireName: 'profile_path')
  String get profilePath;

  NetworksModel._();

  factory NetworksModel([updates(NetworksModelBuilder b)]) = _$NetworksModel;

  static Serializer<NetworksModel> get serializer => _$networksModelSerializer;
  String toJson() {
    return json
        .encode(serializers.serializeWith(NetworksModel.serializer, this));
  }

  static NetworksModel fromJson(String jsonString) {
    return serializers.deserializeWith(
        NetworksModel.serializer, json.decode(jsonString));
  }
}
