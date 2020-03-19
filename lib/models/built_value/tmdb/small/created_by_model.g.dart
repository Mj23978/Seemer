// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'created_by_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CreatedByModel> _$createdByModelSerializer =
    new _$CreatedByModelSerializer();

class _$CreatedByModelSerializer
    implements StructuredSerializer<CreatedByModel> {
  @override
  final Iterable<Type> types = const [CreatedByModel, _$CreatedByModel];
  @override
  final String wireName = 'CreatedByModel';

  @override
  Iterable<Object> serialize(Serializers serializers, CreatedByModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
    ];
    if (object.creditId != null) {
      result
        ..add('credit_id')
        ..add(serializers.serialize(object.creditId,
            specifiedType: const FullType(String)));
    }
    if (object.gender != null) {
      result
        ..add('gender')
        ..add(serializers.serialize(object.gender,
            specifiedType: const FullType(int)));
    }
    if (object.image != null) {
      result
        ..add('profile_path')
        ..add(serializers.serialize(object.image,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  CreatedByModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CreatedByModelBuilder();

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
        case 'credit_id':
          result.creditId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'profile_path':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CreatedByModel extends CreatedByModel {
  @override
  final int id;
  @override
  final String creditId;
  @override
  final String name;
  @override
  final int gender;
  @override
  final String image;

  factory _$CreatedByModel([void Function(CreatedByModelBuilder) updates]) =>
      (new CreatedByModelBuilder()..update(updates)).build();

  _$CreatedByModel._(
      {this.id, this.creditId, this.name, this.gender, this.image})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('CreatedByModel', 'id');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('CreatedByModel', 'name');
    }
  }

  @override
  CreatedByModel rebuild(void Function(CreatedByModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreatedByModelBuilder toBuilder() =>
      new CreatedByModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreatedByModel &&
        id == other.id &&
        creditId == other.creditId &&
        name == other.name &&
        gender == other.gender &&
        image == other.image;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), creditId.hashCode), name.hashCode),
            gender.hashCode),
        image.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CreatedByModel')
          ..add('id', id)
          ..add('creditId', creditId)
          ..add('name', name)
          ..add('gender', gender)
          ..add('image', image))
        .toString();
  }
}

class CreatedByModelBuilder
    implements Builder<CreatedByModel, CreatedByModelBuilder> {
  _$CreatedByModel _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _creditId;
  String get creditId => _$this._creditId;
  set creditId(String creditId) => _$this._creditId = creditId;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  int _gender;
  int get gender => _$this._gender;
  set gender(int gender) => _$this._gender = gender;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  CreatedByModelBuilder();

  CreatedByModelBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _creditId = _$v.creditId;
      _name = _$v.name;
      _gender = _$v.gender;
      _image = _$v.image;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreatedByModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CreatedByModel;
  }

  @override
  void update(void Function(CreatedByModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CreatedByModel build() {
    final _$result = _$v ??
        new _$CreatedByModel._(
            id: id,
            creditId: creditId,
            name: name,
            gender: gender,
            image: image);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
