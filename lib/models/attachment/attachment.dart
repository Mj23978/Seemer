import 'dart:typed_data';

import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:http/http.dart';
import 'package:http_parser/http_parser.dart';

part 'attachment.freezed.dart';
part 'attachment.g.dart';

@freezed
class Attachment with _$Attachment {
  const factory Attachment({
    required String id,
    required UploadState uploadState,
    String? type,
    String? titleLink,
    String? title,
    String? thumbUrl,
    String? text,
    String? pretext,
    String? ogScrapeUrl,
    String? imageUrl,
    // String? footerIcon,
    String? footer,
    @Default(null) dynamic fields,
    // String? fallback,
    String? color,
    String? authorName,
    String? authorLink,
    // String? authorIcon,
    String? assetUrl,
    @Default([]) @JsonKey(defaultValue: []) List<Action> actions,
    Uri? localUri,
    AttachmentFile? file,
    @Default({}) @JsonKey(includeIfNull: false) Map<String, Object?> extraData,
  }) = _Attachment;

  factory Attachment.fromJson(Map<String, dynamic> json) =>
      _$AttachmentFromJson(json);
}

@freezed
class UploadState with _$UploadState {
  const factory UploadState.preparing() = Preparing;
  const factory UploadState.inProgress({
    required int uploaded,
    required int total,
  }) = InProgress;
  const factory UploadState.success() = Success;
  const factory UploadState.failed({required String error}) = Failed;

  factory UploadState.fromJson(Map<String, dynamic> json) =>
      _$UploadStateFromJson(json);
}

extension UploadStateX on UploadState {
  // ignore: unnecessary_this
  bool get isSuccess => this.map<bool>(
      preparing: (v) => false,
      inProgress: (v) => false,
      success: (v) => true,
      failed: (v) => false);
}

@JsonSerializable()
class AttachmentFile {
  AttachmentFile({
    required this.size,
    this.path,
    String? name,
    this.bytes,
  })  : assert(
          path != null || bytes != null,
          'Either path or bytes should be != null',
        ),
        assert(
          !kIsWeb || bytes != null,
          'File by path is not supported in web, Please provide bytes',
        ),
        assert(
          name?.contains('.') ?? true,
          'Invalid file name, should also contain file extension',
        ),
        _name = name;

  factory AttachmentFile.fromJson(Map<String, dynamic> json) =>
      _$AttachmentFileFromJson(json);

  final String? path;
  final String? _name;
  String? get name => _name ?? path?.split('/').last;
  @JsonKey(toJson: _toString, fromJson: _fromString)
  final Uint8List? bytes;
  final int? size;
  String? get extension => name?.split('.').last;
  MediaType? get mimeType => MediaType("application", "octet-stream");
  Map<String, dynamic> toJson() => _$AttachmentFileToJson(this);

  Future<MultipartFile> toMultipartFile() async {
    MultipartFile multiPartFile;

    if (kIsWeb) {
      multiPartFile = MultipartFile.fromBytes(
        "",
        bytes!,
        filename: name,
        contentType: mimeType,
      );
    } else {
      multiPartFile = await MultipartFile.fromPath(
        "",
        path!,
        filename: name,
        contentType: mimeType,
      );
    }
    return multiPartFile;
  }
}

@JsonSerializable()
class Action {
  Action({
    required this.name,
    this.style = 'default',
    required this.text,
    required this.type,
    this.value,
  });

  factory Action.fromJson(Map<String, dynamic> json) => _$ActionFromJson(json);

  final String name;
  final String style;
  final String text;
  final String type;
  final String? value;

  Map<String, dynamic> toJson() => _$ActionToJson(this);
}

Uint8List? _fromString(String? bytes) {
  if (bytes == null) return null;
  return Uint8List.fromList(bytes.codeUnits);
}

String? _toString(Uint8List? bytes) {
  if (bytes == null) return null;
  return String.fromCharCodes(bytes);
}
