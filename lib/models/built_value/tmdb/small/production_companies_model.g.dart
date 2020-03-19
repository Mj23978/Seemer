// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'production_companies_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProductionCompaniesModel> _$productionCompaniesModelSerializer =
    new _$ProductionCompaniesModelSerializer();

class _$ProductionCompaniesModelSerializer
    implements StructuredSerializer<ProductionCompaniesModel> {
  @override
  final Iterable<Type> types = const [
    ProductionCompaniesModel,
    _$ProductionCompaniesModel
  ];
  @override
  final String wireName = 'ProductionCompaniesModel';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ProductionCompaniesModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'origin_country',
      serializers.serialize(object.originCountry,
          specifiedType: const FullType(String)),
    ];
    if (object.logo != null) {
      result
        ..add('logo_path')
        ..add(serializers.serialize(object.logo,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ProductionCompaniesModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProductionCompaniesModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'logo_path':
          result.logo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'origin_country':
          result.originCountry = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ProductionCompaniesModel extends ProductionCompaniesModel {
  @override
  final int id;
  @override
  final String logo;
  @override
  final String name;
  @override
  final String originCountry;

  factory _$ProductionCompaniesModel(
          [void Function(ProductionCompaniesModelBuilder) updates]) =>
      (new ProductionCompaniesModelBuilder()..update(updates)).build();

  _$ProductionCompaniesModel._(
      {this.id, this.logo, this.name, this.originCountry})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('ProductionCompaniesModel', 'id');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('ProductionCompaniesModel', 'name');
    }
    if (originCountry == null) {
      throw new BuiltValueNullFieldError(
          'ProductionCompaniesModel', 'originCountry');
    }
  }

  @override
  ProductionCompaniesModel rebuild(
          void Function(ProductionCompaniesModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProductionCompaniesModelBuilder toBuilder() =>
      new ProductionCompaniesModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProductionCompaniesModel &&
        id == other.id &&
        logo == other.logo &&
        name == other.name &&
        originCountry == other.originCountry;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc($jc(0, id.hashCode), logo.hashCode), name.hashCode),
        originCountry.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProductionCompaniesModel')
          ..add('id', id)
          ..add('logo', logo)
          ..add('name', name)
          ..add('originCountry', originCountry))
        .toString();
  }
}

class ProductionCompaniesModelBuilder
    implements
        Builder<ProductionCompaniesModel, ProductionCompaniesModelBuilder> {
  _$ProductionCompaniesModel _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _logo;
  String get logo => _$this._logo;
  set logo(String logo) => _$this._logo = logo;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _originCountry;
  String get originCountry => _$this._originCountry;
  set originCountry(String originCountry) =>
      _$this._originCountry = originCountry;

  ProductionCompaniesModelBuilder();

  ProductionCompaniesModelBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _logo = _$v.logo;
      _name = _$v.name;
      _originCountry = _$v.originCountry;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProductionCompaniesModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ProductionCompaniesModel;
  }

  @override
  void update(void Function(ProductionCompaniesModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProductionCompaniesModel build() {
    final _$result = _$v ??
        new _$ProductionCompaniesModel._(
            id: id, logo: logo, name: name, originCountry: originCountry);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
