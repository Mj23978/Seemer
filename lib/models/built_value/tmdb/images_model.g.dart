// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'images_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ImagesModel> _$imagesModelSerializer = new _$ImagesModelSerializer();

class _$ImagesModelSerializer implements StructuredSerializer<ImagesModel> {
  @override
  final Iterable<Type> types = const [ImagesModel, _$ImagesModel];
  @override
  final String wireName = 'ImagesModel';

  @override
  Iterable<Object> serialize(Serializers serializers, ImagesModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'backdrops',
      serializers.serialize(object.backdrops,
          specifiedType:
              const FullType(BuiltList, const [const FullType(ImagesModel)])),
      'posters',
      serializers.serialize(object.posters,
          specifiedType:
              const FullType(BuiltList, const [const FullType(ImagesModel)])),
    ];

    return result;
  }

  @override
  ImagesModel deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ImagesModelBuilder();

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
        case 'backdrops':
          result.backdrops.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ImagesModel)]))
              as BuiltList<dynamic>);
          break;
        case 'posters':
          result.posters.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ImagesModel)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$ImagesModel extends ImagesModel {
  @override
  final int id;
  @override
  final BuiltList<ImagesModel> backdrops;
  @override
  final BuiltList<ImagesModel> posters;

  factory _$ImagesModel([void Function(ImagesModelBuilder) updates]) =>
      (new ImagesModelBuilder()..update(updates)).build();

  _$ImagesModel._({this.id, this.backdrops, this.posters}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('ImagesModel', 'id');
    }
    if (backdrops == null) {
      throw new BuiltValueNullFieldError('ImagesModel', 'backdrops');
    }
    if (posters == null) {
      throw new BuiltValueNullFieldError('ImagesModel', 'posters');
    }
  }

  @override
  ImagesModel rebuild(void Function(ImagesModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImagesModelBuilder toBuilder() => new ImagesModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImagesModel &&
        id == other.id &&
        backdrops == other.backdrops &&
        posters == other.posters;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, id.hashCode), backdrops.hashCode), posters.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ImagesModel')
          ..add('id', id)
          ..add('backdrops', backdrops)
          ..add('posters', posters))
        .toString();
  }
}

class ImagesModelBuilder implements Builder<ImagesModel, ImagesModelBuilder> {
  _$ImagesModel _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  ListBuilder<ImagesModel> _backdrops;
  ListBuilder<ImagesModel> get backdrops =>
      _$this._backdrops ??= new ListBuilder<ImagesModel>();
  set backdrops(ListBuilder<ImagesModel> backdrops) =>
      _$this._backdrops = backdrops;

  ListBuilder<ImagesModel> _posters;
  ListBuilder<ImagesModel> get posters =>
      _$this._posters ??= new ListBuilder<ImagesModel>();
  set posters(ListBuilder<ImagesModel> posters) => _$this._posters = posters;

  ImagesModelBuilder();

  ImagesModelBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _backdrops = _$v.backdrops?.toBuilder();
      _posters = _$v.posters?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImagesModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ImagesModel;
  }

  @override
  void update(void Function(ImagesModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ImagesModel build() {
    _$ImagesModel _$result;
    try {
      _$result = _$v ??
          new _$ImagesModel._(
              id: id, backdrops: backdrops.build(), posters: posters.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'backdrops';
        backdrops.build();
        _$failedField = 'posters';
        posters.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ImagesModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
