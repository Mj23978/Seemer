// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reviews_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ReviewsModel> _$reviewsModelSerializer =
    new _$ReviewsModelSerializer();
Serializer<ReviewsResults> _$reviewsResultsSerializer =
    new _$ReviewsResultsSerializer();

class _$ReviewsModelSerializer implements StructuredSerializer<ReviewsModel> {
  @override
  final Iterable<Type> types = const [ReviewsModel, _$ReviewsModel];
  @override
  final String wireName = 'ReviewsModel';

  @override
  Iterable<Object> serialize(Serializers serializers, ReviewsModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'results',
      serializers.serialize(object.results,
          specifiedType: const FullType(
              BuiltList, const [const FullType(ReviewsResults)])),
    ];
    if (object.page != null) {
      result
        ..add('page')
        ..add(serializers.serialize(object.page,
            specifiedType: const FullType(int)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.totalResults != null) {
      result
        ..add('total_results')
        ..add(serializers.serialize(object.totalResults,
            specifiedType: const FullType(int)));
    }
    if (object.totalPages != null) {
      result
        ..add('total_pages')
        ..add(serializers.serialize(object.totalPages,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  ReviewsModel deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReviewsModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'page':
          result.page = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'results':
          result.results.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ReviewsResults)]))
              as BuiltList<dynamic>);
          break;
        case 'total_results':
          result.totalResults = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'total_pages':
          result.totalPages = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$ReviewsResultsSerializer
    implements StructuredSerializer<ReviewsResults> {
  @override
  final Iterable<Type> types = const [ReviewsResults, _$ReviewsResults];
  @override
  final String wireName = 'ReviewsResults';

  @override
  Iterable<Object> serialize(Serializers serializers, ReviewsResults object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'author',
      serializers.serialize(object.author,
          specifiedType: const FullType(String)),
      'content',
      serializers.serialize(object.content,
          specifiedType: const FullType(String)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
    ];
    if (object.language != null) {
      result
        ..add('iso_639_1')
        ..add(serializers.serialize(object.language,
            specifiedType: const FullType(String)));
    }
    if (object.mediaId != null) {
      result
        ..add('media_id')
        ..add(serializers.serialize(object.mediaId,
            specifiedType: const FullType(String)));
    }
    if (object.mediaTitle != null) {
      result
        ..add('media_title')
        ..add(serializers.serialize(object.mediaTitle,
            specifiedType: const FullType(String)));
    }
    if (object.mediaType != null) {
      result
        ..add('media_type')
        ..add(serializers.serialize(object.mediaType,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ReviewsResults deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReviewsResultsBuilder();

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
        case 'author':
          result.author = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'content':
          result.content = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'iso_639_1':
          result.language = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'media_id':
          result.mediaId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'media_title':
          result.mediaTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'media_type':
          result.mediaType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ReviewsModel extends ReviewsModel {
  @override
  final int page;
  @override
  final int id;
  @override
  final BuiltList<ReviewsResults> results;
  @override
  final int totalResults;
  @override
  final int totalPages;

  factory _$ReviewsModel([void Function(ReviewsModelBuilder) updates]) =>
      (new ReviewsModelBuilder()..update(updates)).build();

  _$ReviewsModel._(
      {this.page, this.id, this.results, this.totalResults, this.totalPages})
      : super._() {
    if (results == null) {
      throw new BuiltValueNullFieldError('ReviewsModel', 'results');
    }
  }

  @override
  ReviewsModel rebuild(void Function(ReviewsModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReviewsModelBuilder toBuilder() => new ReviewsModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReviewsModel &&
        page == other.page &&
        id == other.id &&
        results == other.results &&
        totalResults == other.totalResults &&
        totalPages == other.totalPages;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, page.hashCode), id.hashCode), results.hashCode),
            totalResults.hashCode),
        totalPages.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ReviewsModel')
          ..add('page', page)
          ..add('id', id)
          ..add('results', results)
          ..add('totalResults', totalResults)
          ..add('totalPages', totalPages))
        .toString();
  }
}

class ReviewsModelBuilder
    implements Builder<ReviewsModel, ReviewsModelBuilder> {
  _$ReviewsModel _$v;

  int _page;
  int get page => _$this._page;
  set page(int page) => _$this._page = page;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  ListBuilder<ReviewsResults> _results;
  ListBuilder<ReviewsResults> get results =>
      _$this._results ??= new ListBuilder<ReviewsResults>();
  set results(ListBuilder<ReviewsResults> results) => _$this._results = results;

  int _totalResults;
  int get totalResults => _$this._totalResults;
  set totalResults(int totalResults) => _$this._totalResults = totalResults;

  int _totalPages;
  int get totalPages => _$this._totalPages;
  set totalPages(int totalPages) => _$this._totalPages = totalPages;

  ReviewsModelBuilder();

  ReviewsModelBuilder get _$this {
    if (_$v != null) {
      _page = _$v.page;
      _id = _$v.id;
      _results = _$v.results?.toBuilder();
      _totalResults = _$v.totalResults;
      _totalPages = _$v.totalPages;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReviewsModel other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ReviewsModel;
  }

  @override
  void update(void Function(ReviewsModelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ReviewsModel build() {
    _$ReviewsModel _$result;
    try {
      _$result = _$v ??
          new _$ReviewsModel._(
              page: page,
              id: id,
              results: results.build(),
              totalResults: totalResults,
              totalPages: totalPages);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'results';
        results.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ReviewsModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ReviewsResults extends ReviewsResults {
  @override
  final int id;
  @override
  final String author;
  @override
  final String content;
  @override
  final String url;
  @override
  final String language;
  @override
  final String mediaId;
  @override
  final String mediaTitle;
  @override
  final String mediaType;

  factory _$ReviewsResults([void Function(ReviewsResultsBuilder) updates]) =>
      (new ReviewsResultsBuilder()..update(updates)).build();

  _$ReviewsResults._(
      {this.id,
      this.author,
      this.content,
      this.url,
      this.language,
      this.mediaId,
      this.mediaTitle,
      this.mediaType})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('ReviewsResults', 'id');
    }
    if (author == null) {
      throw new BuiltValueNullFieldError('ReviewsResults', 'author');
    }
    if (content == null) {
      throw new BuiltValueNullFieldError('ReviewsResults', 'content');
    }
    if (url == null) {
      throw new BuiltValueNullFieldError('ReviewsResults', 'url');
    }
  }

  @override
  ReviewsResults rebuild(void Function(ReviewsResultsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReviewsResultsBuilder toBuilder() =>
      new ReviewsResultsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReviewsResults &&
        id == other.id &&
        author == other.author &&
        content == other.content &&
        url == other.url &&
        language == other.language &&
        mediaId == other.mediaId &&
        mediaTitle == other.mediaTitle &&
        mediaType == other.mediaType;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, id.hashCode), author.hashCode),
                            content.hashCode),
                        url.hashCode),
                    language.hashCode),
                mediaId.hashCode),
            mediaTitle.hashCode),
        mediaType.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ReviewsResults')
          ..add('id', id)
          ..add('author', author)
          ..add('content', content)
          ..add('url', url)
          ..add('language', language)
          ..add('mediaId', mediaId)
          ..add('mediaTitle', mediaTitle)
          ..add('mediaType', mediaType))
        .toString();
  }
}

class ReviewsResultsBuilder
    implements Builder<ReviewsResults, ReviewsResultsBuilder> {
  _$ReviewsResults _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _author;
  String get author => _$this._author;
  set author(String author) => _$this._author = author;

  String _content;
  String get content => _$this._content;
  set content(String content) => _$this._content = content;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _language;
  String get language => _$this._language;
  set language(String language) => _$this._language = language;

  String _mediaId;
  String get mediaId => _$this._mediaId;
  set mediaId(String mediaId) => _$this._mediaId = mediaId;

  String _mediaTitle;
  String get mediaTitle => _$this._mediaTitle;
  set mediaTitle(String mediaTitle) => _$this._mediaTitle = mediaTitle;

  String _mediaType;
  String get mediaType => _$this._mediaType;
  set mediaType(String mediaType) => _$this._mediaType = mediaType;

  ReviewsResultsBuilder();

  ReviewsResultsBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _author = _$v.author;
      _content = _$v.content;
      _url = _$v.url;
      _language = _$v.language;
      _mediaId = _$v.mediaId;
      _mediaTitle = _$v.mediaTitle;
      _mediaType = _$v.mediaType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReviewsResults other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ReviewsResults;
  }

  @override
  void update(void Function(ReviewsResultsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ReviewsResults build() {
    final _$result = _$v ??
        new _$ReviewsResults._(
            id: id,
            author: author,
            content: content,
            url: url,
            language: language,
            mediaId: mediaId,
            mediaTitle: mediaTitle,
            mediaType: mediaType);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
