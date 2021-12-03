// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'attachment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AttachmentFile _$AttachmentFileFromJson(Map<String, dynamic> json) =>
    AttachmentFile(
      size: json['size'] as int?,
      path: json['path'] as String?,
      name: json['name'] as String?,
      bytes: _fromString(json['bytes'] as String?),
    );

Map<String, dynamic> _$AttachmentFileToJson(AttachmentFile instance) =>
    <String, dynamic>{
      'path': instance.path,
      'name': instance.name,
      'bytes': _toString(instance.bytes),
      'size': instance.size,
    };

Action _$ActionFromJson(Map<String, dynamic> json) => Action(
      name: json['name'] as String,
      style: json['style'] as String? ?? 'default',
      text: json['text'] as String,
      type: json['type'] as String,
      value: json['value'] as String?,
    );

Map<String, dynamic> _$ActionToJson(Action instance) => <String, dynamic>{
      'name': instance.name,
      'style': instance.style,
      'text': instance.text,
      'type': instance.type,
      'value': instance.value,
    };

_$_Attachment _$$_AttachmentFromJson(Map<String, dynamic> json) =>
    _$_Attachment(
      id: json['id'] as String,
      uploadState:
          UploadState.fromJson(json['uploadState'] as Map<String, dynamic>),
      type: json['type'] as String?,
      titleLink: json['titleLink'] as String?,
      title: json['title'] as String?,
      thumbUrl: json['thumbUrl'] as String?,
      text: json['text'] as String?,
      pretext: json['pretext'] as String?,
      ogScrapeUrl: json['ogScrapeUrl'] as String?,
      imageUrl: json['imageUrl'] as String?,
      footer: json['footer'] as String?,
      fields: json['fields'] ?? null,
      color: json['color'] as String?,
      authorName: json['authorName'] as String?,
      authorLink: json['authorLink'] as String?,
      assetUrl: json['assetUrl'] as String?,
      actions: (json['actions'] as List<dynamic>?)
              ?.map((e) => Action.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      localUri: json['localUri'] == null
          ? null
          : Uri.parse(json['localUri'] as String),
      file: json['file'] == null
          ? null
          : AttachmentFile.fromJson(json['file'] as Map<String, dynamic>),
      extraData: json['extraData'] as Map<String, dynamic>? ?? const {},
    );

Map<String, dynamic> _$$_AttachmentToJson(_$_Attachment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'uploadState': instance.uploadState,
      'type': instance.type,
      'titleLink': instance.titleLink,
      'title': instance.title,
      'thumbUrl': instance.thumbUrl,
      'text': instance.text,
      'pretext': instance.pretext,
      'ogScrapeUrl': instance.ogScrapeUrl,
      'imageUrl': instance.imageUrl,
      'footer': instance.footer,
      'fields': instance.fields,
      'color': instance.color,
      'authorName': instance.authorName,
      'authorLink': instance.authorLink,
      'assetUrl': instance.assetUrl,
      'actions': instance.actions,
      'localUri': instance.localUri?.toString(),
      'file': instance.file,
      'extraData': instance.extraData,
    };

_$Preparing _$$PreparingFromJson(Map<String, dynamic> json) => _$Preparing(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$PreparingToJson(_$Preparing instance) =>
    <String, dynamic>{
      'type': instance.$type,
    };

_$InProgress _$$InProgressFromJson(Map<String, dynamic> json) => _$InProgress(
      uploaded: json['uploaded'] as int,
      total: json['total'] as int,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$InProgressToJson(_$InProgress instance) =>
    <String, dynamic>{
      'uploaded': instance.uploaded,
      'total': instance.total,
      'type': instance.$type,
    };

_$Success _$$SuccessFromJson(Map<String, dynamic> json) => _$Success(
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$SuccessToJson(_$Success instance) => <String, dynamic>{
      'type': instance.$type,
    };

_$Failed _$$FailedFromJson(Map<String, dynamic> json) => _$Failed(
      error: json['error'] as String,
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$$FailedToJson(_$Failed instance) => <String, dynamic>{
      'error': instance.error,
      'type': instance.$type,
    };
