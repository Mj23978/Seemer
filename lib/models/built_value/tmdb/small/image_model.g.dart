// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ImageModel> _$imageModelSerializer = new _$ImageModelSerializer();

class _$ImageModelSerializer implements StructuredSerializer<ImageModel> {
  @override
  final Iterable<Type> types = const [ImageModel, _$ImageModel];
  @override
  final String wireName = 'ImageModel';

  @override
  Iterable<Object> serialize(Serializers serializers, ImageModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'width',
      serializers.serialize(object.width, specifiedType: const FullType(int)),
      'height',
      serializers.serialize(object.height, specifiedType: const FullType(int)),
      'aspect_ratio',
      serializers.serialize(object.aspectRatio,
          specifiedType: const FullType(double)),
      'file_path',
      serializers.serialize(object.filePath,
          specifiedType: const FullType(String)),
      'vote_average',
      serializers.serialize(object.voteAverage,
          specifiedType: const FullType(int)),
      'vote_count',
      serializers.serialize(object.voteCount,
          specifiedType: const FullType(int)),
    ];
    if (object.imageLanguage != null) {
      result
        ..add('iso_639_1')
        ..add(serializers.serialize(object.imageLanguage,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ImageModel deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ImageModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'width':
          result.width = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'height':
          result.height = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'aspect_ratio':
          result.aspectRatio = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'file_path':
          result.filePath = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'iso_639_1':
          result.imageLanguage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'vote_average':
          result.voteAverage = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'vote_count':
          result.voteCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$ImageModel extends ImageModel {
  @override
  final int width;
  @override
  final int height;
  @override
  final double aspectRatio;
  @override
  final String filePath;
  @override
  final String imageLanguage;
  @override
  final int voteAverage;
  @override
  final int voteCount;

  factory _$ImageModel([void Function(ImageModelBuilder) updates]) =>
      (new ImageModelBuilder()..update(updates)).build();

  _$ImageModel._(
      {this.width,
      this.height,
      this.aspectRatio,
      this.filePath,
      this.imageLanguage,
      this.voteAverage,
      this.voteCount})
      : super._() {
    if (width == null) {
      throw new BuiltValueNullFieldError('ImageModel', 'width');
    }
    if (height == null) {
      throw new BuiltValueNullFieldError('ImageModel', 'height');
    }
    if (aspectRatio == null) {
      throw new BuiltValueNullFieldError('ImageModel', 'aspectRatio');
    }
    if (filePath == null) {
      throw new BuiltValueNullFieldError('ImageModel', 'filePath');
    }
    if (voteAverage == null) {
      throw new BuiltValueNullFieldError('ImageModel', 'voteAverage');
    }
    if (voteCount == null) {
      throw new BuiltValueNullFieldError('ImageModel', 'voteCount');
    }
  }

  @override
  ImageModel rebuild(void Function(ImageModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ImageModelBuilder toBuilder() => new ImageModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ImageModel &&
        width == other.width &&
        height == other.height &&
        aspectRatio == other.aspectRatio &&
        filePath == other.filePath &&
        imageLanguage == other.imageLanguage &&
        voteAverage == other.voteAverage &&
        voteCount == other.voteCount;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, width.hashCode), height.hashCode),
                        aspectRatio.hashCode),
                    filePath.hashCode),
                imageLanguage.hashCode),
            voteAverage.hashCode),
        voteCount.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ImageModel')
          ..add('width', width)
          ..add('height', height)
          ..add('aspectRatio', aspectRatio)
          ..add('filePath', filePath)
          ..add('imageLanguage', imageLanguage)
          ..add('voteAverage', voteAverage)
          ..add('voteCount', voteCount))
        .toString();
  }
}

class ImageModelBuilder implements Builder<ImageModel, ImageModelBuilder> {
  _$ImageModel _$v;

  int _width;
  int get width => _$this._width;
  set width(int width) => _$this._width = width;

  int _height;
  int get height => _$this._height;
  set height(int height) => _$this._height = height;

  double _aspectRatio;
  double get aspectRatio => _$this._aspectRatio;
  set aspectRatio(double aspectRatio) => _$this._aspectRatio = aspectRatio;

  String _filePath;
  String get filePath => _$this._filePath;
  set filePath(String filePath) => _$this._filePath = filePath;

  String _imageLanguage;
  String get imageLanguage => _$this._imageLanguage;
  set imageLanguage(String imageLanguage) =>
      _$this._imageLanguage = imageLanguage;

  int _voteAverage;
  int get voteAverage => _$this._voteAverage;
  set voteAverage(int voteAverage) => _$this._voteAverage = voteAverage;

  int _voteCount;
  int get voteCount => _$this._voteCount;
  set voteCount(int voteCount) => _$this._voteCount = voteCount;

  ImageModelBuilder();

  ImageModelBuilder get _$this {
    if (_$v != null) {
      _width = _$v.width;
      _height = _$v.height;
      _aspectRatio = _$v.aspectRatio;
      _filePath = _$v.filePath;
      _imageLanguage = _$v.imageLanguage;
      _voteAverage = _$v.voteAverage;
      _voteCount = _$v.voteCount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ImageModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ImageModel;
  }

  @override
  void update(void Function(ImageModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ImageModel build() {
    final _$result = _$v ??
        new _$ImageModel._(
            width: width,
            height: height,
            aspectRatio: aspectRatio,
            filePath: filePath,
            imageLanguage: imageLanguage,
            voteAverage: voteAverage,
            voteCount: voteCount);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
