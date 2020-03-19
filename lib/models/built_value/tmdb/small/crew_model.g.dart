// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'crew_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CrewModel> _$crewModelSerializer = new _$CrewModelSerializer();

class _$CrewModelSerializer implements StructuredSerializer<CrewModel> {
  @override
  final Iterable<Type> types = const [CrewModel, _$CrewModel];
  @override
  final String wireName = 'CrewModel';

  @override
  Iterable<Object> serialize(Serializers serializers, CrewModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'department',
      serializers.serialize(object.department,
          specifiedType: const FullType(String)),
      'credit_id',
      serializers.serialize(object.creditId,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'job',
      serializers.serialize(object.job, specifiedType: const FullType(String)),
    ];
    if (object.gender != null) {
      result
        ..add('gender')
        ..add(serializers.serialize(object.gender,
            specifiedType: const FullType(int)));
    }
    if (object.order != null) {
      result
        ..add('order')
        ..add(serializers.serialize(object.order,
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
  CrewModel deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CrewModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'department':
          result.department = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'credit_id':
          result.creditId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'job':
          result.job = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'order':
          result.order = serializers.deserialize(value,
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

class _$CrewModel extends CrewModel {
  @override
  final String department;
  @override
  final String creditId;
  @override
  final int gender;
  @override
  final int id;
  @override
  final String name;
  @override
  final String job;
  @override
  final int order;
  @override
  final String image;

  factory _$CrewModel([void Function(CrewModelBuilder) updates]) =>
      (new CrewModelBuilder()..update(updates)).build();

  _$CrewModel._(
      {this.department,
      this.creditId,
      this.gender,
      this.id,
      this.name,
      this.job,
      this.order,
      this.image})
      : super._() {
    if (department == null) {
      throw new BuiltValueNullFieldError('CrewModel', 'department');
    }
    if (creditId == null) {
      throw new BuiltValueNullFieldError('CrewModel', 'creditId');
    }
    if (id == null) {
      throw new BuiltValueNullFieldError('CrewModel', 'id');
    }
    if (name == null) {
      throw new BuiltValueNullFieldError('CrewModel', 'name');
    }
    if (job == null) {
      throw new BuiltValueNullFieldError('CrewModel', 'job');
    }
  }

  @override
  CrewModel rebuild(void Function(CrewModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CrewModelBuilder toBuilder() => new CrewModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CrewModel &&
        department == other.department &&
        creditId == other.creditId &&
        gender == other.gender &&
        id == other.id &&
        name == other.name &&
        job == other.job &&
        order == other.order &&
        image == other.image;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, department.hashCode), creditId.hashCode),
                            gender.hashCode),
                        id.hashCode),
                    name.hashCode),
                job.hashCode),
            order.hashCode),
        image.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CrewModel')
          ..add('department', department)
          ..add('creditId', creditId)
          ..add('gender', gender)
          ..add('id', id)
          ..add('name', name)
          ..add('job', job)
          ..add('order', order)
          ..add('image', image))
        .toString();
  }
}

class CrewModelBuilder implements Builder<CrewModel, CrewModelBuilder> {
  _$CrewModel _$v;

  String _department;
  String get department => _$this._department;
  set department(String department) => _$this._department = department;

  String _creditId;
  String get creditId => _$this._creditId;
  set creditId(String creditId) => _$this._creditId = creditId;

  int _gender;
  int get gender => _$this._gender;
  set gender(int gender) => _$this._gender = gender;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _job;
  String get job => _$this._job;
  set job(String job) => _$this._job = job;

  int _order;
  int get order => _$this._order;
  set order(int order) => _$this._order = order;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  CrewModelBuilder();

  CrewModelBuilder get _$this {
    if (_$v != null) {
      _department = _$v.department;
      _creditId = _$v.creditId;
      _gender = _$v.gender;
      _id = _$v.id;
      _name = _$v.name;
      _job = _$v.job;
      _order = _$v.order;
      _image = _$v.image;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CrewModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CrewModel;
  }

  @override
  void update(void Function(CrewModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CrewModel build() {
    final _$result = _$v ??
        new _$CrewModel._(
            department: department,
            creditId: creditId,
            gender: gender,
            id: id,
            name: name,
            job: job,
            order: order,
            image: image);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
