// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'production_countries_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProductionCountriesModel> _$productionCountriesModelSerializer =
    new _$ProductionCountriesModelSerializer();

class _$ProductionCountriesModelSerializer
    implements StructuredSerializer<ProductionCountriesModel> {
  @override
  final Iterable<Type> types = const [
    ProductionCountriesModel,
    _$ProductionCountriesModel
  ];
  @override
  final String wireName = 'ProductionCountriesModel';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ProductionCountriesModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'iso_3166_1',
      serializers.serialize(object.countryCode,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  ProductionCountriesModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProductionCountriesModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'iso_3166_1':
          result.countryCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ProductionCountriesModel extends ProductionCountriesModel {
  @override
  final String name;
  @override
  final String countryCode;

  factory _$ProductionCountriesModel(
          [void Function(ProductionCountriesModelBuilder) updates]) =>
      (new ProductionCountriesModelBuilder()..update(updates)).build();

  _$ProductionCountriesModel._({this.name, this.countryCode}) : super._() {
    if (name == null) {
      throw new BuiltValueNullFieldError('ProductionCountriesModel', 'name');
    }
    if (countryCode == null) {
      throw new BuiltValueNullFieldError(
          'ProductionCountriesModel', 'countryCode');
    }
  }

  @override
  ProductionCountriesModel rebuild(
          void Function(ProductionCountriesModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductionCountriesModelBuilder toBuilder() =>
      new ProductionCountriesModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductionCountriesModel &&
        name == other.name &&
        countryCode == other.countryCode;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, name.hashCode), countryCode.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProductionCountriesModel')
          ..add('name', name)
          ..add('countryCode', countryCode))
        .toString();
  }
}

class ProductionCountriesModelBuilder
    implements
        Builder<ProductionCountriesModel, ProductionCountriesModelBuilder> {
  _$ProductionCountriesModel _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _countryCode;
  String get countryCode => _$this._countryCode;
  set countryCode(String countryCode) => _$this._countryCode = countryCode;

  ProductionCountriesModelBuilder();

  ProductionCountriesModelBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _countryCode = _$v.countryCode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductionCountriesModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ProductionCountriesModel;
  }

  @override
  void update(void Function(ProductionCountriesModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProductionCountriesModel build() {
    final _$result = _$v ??
        new _$ProductionCountriesModel._(name: name, countryCode: countryCode);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
