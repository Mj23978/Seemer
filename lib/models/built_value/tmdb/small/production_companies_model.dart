import 'dart:convert';

import "package:built_value/built_value.dart";
import "package:built_value/serializer.dart";

import '../serializers.dart';

part 'production_companies_model.g.dart';

abstract class ProductionCompaniesModel
    implements
        Built<ProductionCompaniesModel, ProductionCompaniesModelBuilder> {
  int get id;

  @nullable
  @BuiltValueField(wireName: 'logo_path')
  String get logo;

  String get name;

  @BuiltValueField(wireName: 'origin_country')
  String get originCountry;

  ProductionCompaniesModel._();

  factory ProductionCompaniesModel(
          [updates(ProductionCompaniesModelBuilder b)]) =
      _$ProductionCompaniesModel;

  static Serializer<ProductionCompaniesModel> get serializer =>
      _$productionCompaniesModelSerializer;
  String toJson() {
    return json.encode(
        serializers.serializeWith(ProductionCompaniesModel.serializer, this));
  }

  static ProductionCompaniesModel fromJson(String jsonString) {
    return serializers.deserializeWith(
        ProductionCompaniesModel.serializer, json.decode(jsonString));
  }
}
