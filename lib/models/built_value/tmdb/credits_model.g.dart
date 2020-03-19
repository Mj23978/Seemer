// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'credits_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CreditsModel> _$creditsModelSerializer =
    new _$CreditsModelSerializer();

class _$CreditsModelSerializer implements StructuredSerializer<CreditsModel> {
  @override
  final Iterable<Type> types = const [CreditsModel, _$CreditsModel];
  @override
  final String wireName = 'CreditsModel';

  @override
  Iterable<Object> serialize(Serializers serializers, CreditsModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'cast',
      serializers.serialize(object.cast,
          specifiedType:
              const FullType(BuiltList, const [const FullType(CastModel)])),
      'crew',
      serializers.serialize(object.crew,
          specifiedType:
              const FullType(BuiltList, const [const FullType(CrewModel)])),
    ];

    return result;
  }

  @override
  CreditsModel deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CreditsModelBuilder();

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
        case 'cast':
          result.cast.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CastModel)]))
              as BuiltList<dynamic>);
          break;
        case 'crew':
          result.crew.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(CrewModel)]))
              as BuiltList<dynamic>);
          break;
      }
    }

    return result.build();
  }
}

class _$CreditsModel extends CreditsModel {
  @override
  final int id;
  @override
  final BuiltList<CastModel> cast;
  @override
  final BuiltList<CrewModel> crew;

  factory _$CreditsModel([void Function(CreditsModelBuilder) updates]) =>
      (new CreditsModelBuilder()..update(updates)).build();

  _$CreditsModel._({this.id, this.cast, this.crew}) : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('CreditsModel', 'id');
    }
    if (cast == null) {
      throw new BuiltValueNullFieldError('CreditsModel', 'cast');
    }
    if (crew == null) {
      throw new BuiltValueNullFieldError('CreditsModel', 'crew');
    }
  }

  @override
  CreditsModel rebuild(void Function(CreditsModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreditsModelBuilder toBuilder() => new CreditsModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreditsModel &&
        id == other.id &&
        cast == other.cast &&
        crew == other.crew;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, id.hashCode), cast.hashCode), crew.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CreditsModel')
          ..add('id', id)
          ..add('cast', cast)
          ..add('crew', crew))
        .toString();
  }
}

class CreditsModelBuilder
    implements Builder<CreditsModel, CreditsModelBuilder> {
  _$CreditsModel _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  ListBuilder<CastModel> _cast;
  ListBuilder<CastModel> get cast =>
      _$this._cast ??= new ListBuilder<CastModel>();
  set cast(ListBuilder<CastModel> cast) => _$this._cast = cast;

  ListBuilder<CrewModel> _crew;
  ListBuilder<CrewModel> get crew =>
      _$this._crew ??= new ListBuilder<CrewModel>();
  set crew(ListBuilder<CrewModel> crew) => _$this._crew = crew;

  CreditsModelBuilder();

  CreditsModelBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _cast = _$v.cast?.toBuilder();
      _crew = _$v.crew?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreditsModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CreditsModel;
  }

  @override
  void update(void Function(CreditsModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CreditsModel build() {
    _$CreditsModel _$result;
    try {
      _$result = _$v ??
          new _$CreditsModel._(id: id, cast: cast.build(), crew: crew.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'cast';
        cast.build();
        _$failedField = 'crew';
        crew.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CreditsModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
