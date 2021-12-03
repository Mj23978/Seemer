import 'package:freezed_annotation/freezed_annotation.dart';

import '../user/user.dart';

part 'member.freezed.dart';
part 'member.g.dart';

@freezed
class Member with _$Member {
  const factory Member({
    @Default(false) bool invited,
    @Default(false) bool banned,
    @Default(false) bool shadowBanned,
    @Default(false) bool isModerator,
    User? user,
    DateTime? inviteAcceptedAt,
    DateTime? inviteRejectedAt,
    String? role,
    String? userId,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Member;

  factory Member.fromJson(Map<String, dynamic> json) => _$MemberFromJson(json);
}
