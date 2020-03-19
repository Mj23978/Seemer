// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_states_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AccountStatesModel> _$accountStatesModelSerializer =
    new _$AccountStatesModelSerializer();

class _$AccountStatesModelSerializer
    implements StructuredSerializer<AccountStatesModel> {
  @override
  final Iterable<Type> types = const [AccountStatesModel, _$AccountStatesModel];
  @override
  final String wireName = 'AccountStatesModel';

  @override
  Iterable<Object> serialize(Serializers serializers, AccountStatesModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'favorite',
      serializers.serialize(object.favorite,
          specifiedType: const FullType(bool)),
      'watchlist',
      serializers.serialize(object.watchlist,
          specifiedType: const FullType(bool)),
    ];
    if (object.rated != null) {
      result
        ..add('rated')
        ..add(serializers.serialize(object.rated,
            specifiedType: const FullType(RatedModel)));
    }
    return result;
  }

  @override
  AccountStatesModel deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AccountStatesModelBuilder();

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
        case 'favorite':
          result.favorite = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'rated':
          result.rated.replace(serializers.deserialize(value,
              specifiedType: const FullType(RatedModel)) as RatedModel);
          break;
        case 'watchlist':
          result.watchlist = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$AccountStatesModel extends AccountStatesModel {
  @override
  final int id;
  @override
  final bool favorite;
  @override
  final RatedModel rated;
  @override
  final bool watchlist;

  factory _$AccountStatesModel(
          [void Function(AccountStatesModelBuilder) updates]) =>
      (new AccountStatesModelBuilder()..update(updates)).build();

  _$AccountStatesModel._({this.id, this.favorite, this.rated, this.watchlist})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('AccountStatesModel', 'id');
    }
    if (favorite == null) {
      throw new BuiltValueNullFieldError('AccountStatesModel', 'favorite');
    }
    if (watchlist == null) {
      throw new BuiltValueNullFieldError('AccountStatesModel', 'watchlist');
    }
  }

  @override
  AccountStatesModel rebuild(
          void Function(AccountStatesModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AccountStatesModelBuilder toBuilder() =>
      new AccountStatesModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AccountStatesModel &&
        id == other.id &&
        favorite == other.favorite &&
        rated == other.rated &&
        watchlist == other.watchlist;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), favorite.hashCode), rated.hashCode),
        watchlist.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AccountStatesModel')
          ..add('id', id)
          ..add('favorite', favorite)
          ..add('rated', rated)
          ..add('watchlist', watchlist))
        .toString();
  }
}

class AccountStatesModelBuilder
    implements Builder<AccountStatesModel, AccountStatesModelBuilder> {
  _$AccountStatesModel _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  bool _favorite;
  bool get favorite => _$this._favorite;
  set favorite(bool favorite) => _$this._favorite = favorite;

  RatedModelBuilder _rated;
  RatedModelBuilder get rated => _$this._rated ??= new RatedModelBuilder();
  set rated(RatedModelBuilder rated) => _$this._rated = rated;

  bool _watchlist;
  bool get watchlist => _$this._watchlist;
  set watchlist(bool watchlist) => _$this._watchlist = watchlist;

  AccountStatesModelBuilder();

  AccountStatesModelBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _favorite = _$v.favorite;
      _rated = _$v.rated?.toBuilder();
      _watchlist = _$v.watchlist;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AccountStatesModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AccountStatesModel;
  }

  @override
  void update(void Function(AccountStatesModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AccountStatesModel build() {
    _$AccountStatesModel _$result;
    try {
      _$result = _$v ??
          new _$AccountStatesModel._(
              id: id,
              favorite: favorite,
              rated: _rated?.build(),
              watchlist: watchlist);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'rated';
        _rated?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AccountStatesModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
