import 'dart:convert';

import "package:built_value/built_value.dart";
import "package:built_value/serializer.dart";

import '../serializers.dart';

part 'production_countries_model.g.dart';

abstract class ProductionCountriesModel
    implements
        Built<ProductionCountriesModel, ProductionCountriesModelBuilder> {
  String get name;

  @BuiltValueField(wireName: 'iso_3166_1')
  String get countryCode;

  ProductionCountriesModel._();

  factory ProductionCountriesModel(
          [updates(ProductionCountriesModelBuilder b)]) =
      _$ProductionCountriesModel;

  static Serializer<ProductionCountriesModel> get serializer =>
      _$productionCountriesModelSerializer;
  String toJson() {
    return json.encode(
        serializers.serializeWith(ProductionCountriesModel.serializer, this));
  }

  static ProductionCountriesModel fromJson(String jsonString) {
    return serializers.deserializeWith(
        ProductionCountriesModel.serializer, json.decode(jsonString));
  }
}
