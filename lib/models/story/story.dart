import 'package:freezed_annotation/freezed_annotation.dart';

import '../user/user.dart';

part 'story.freezed.dart';
part 'story.g.dart';

@freezed
class Story with _$Story {
  const factory Story({
    required String id,
    required User user,
    required DateTime publishedAt,
    bool? isSeen,
    List<String>? images,
  }) = _Story;

  factory Story.fromJson(Map<String, dynamic> json) => _$StoryFromJson(json);
}
