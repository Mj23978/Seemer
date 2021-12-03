import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../utils/extensions.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required String uid,
    String? displayName,
    bool? isActive,
    String? email,
    String? role,
    String? photoUrl,
    String? username,
    DateTime? lastActive,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _User;

  const factory User.ownUser({
    required String uid,
    // required List<Device> devices,
    required List<Mute> mutes,
    required List<Mute> channelMutes,
    required int totalUnreadCount,
    required int unreadChannels,
    String? displayName,
    bool? isActive,
    String? email,
    String? photoUrl,
    String? username,
    String? role,
    DateTime? createdAt,
    DateTime? lastActive,
    DateTime? updatedAt,
    @Default(false) bool online,
    @Default({}) Map<String, Object?> extraData,
    @Default(false) bool banned,
    @Default([]) List<String> teams,
    String? language,
  }) = OwnUser;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@freezed
class Mute with _$Mute {
  
  const factory Mute({
    required User user,
    // required ChannelModel channel,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Mute;

  factory Mute.fromJson(Map<String, dynamic> json) => _$MuteFromJson(json);
}

abstract class AuthService {
  User? currentUser();
  Future<User?> signInAnonymously();
  Future<User?> signInWithEmailAndPassword(String email, String password);
  Future<User?> createUserWithEmailAndPassword(String email, String password);
  Future<void> sendPasswordResetEmail(String email);
  Future<User?> signInWithEmailAndLink(String email, String link);
  bool isSignInWithEmailLink(String link);
  Future<void> sendSignInWithEmailLink(String email, String url);
  Future<User?> signInWithGoogle();
  Future<void> signOut();
  Stream<User?> get onAuthStateChanged;
  void dispose();
}



extension UserListX on List<User> {
  List<User> search(String query) {
    String normalize(String input) => input.toLowerCase();

    final normalizedQuery = normalize(query);

    final matchingUsers = <User, int>{}; // User:lDistance

    for (final user in this) {
      final normalizedId = normalize(user.uid);
      final normalizedUserName = normalize(user.username!);
      final lDistance = normalizedUserName.levenshteinDistance(normalizedQuery);
      final containsId = normalizedId.contains(normalizedQuery);
      final containsName = normalizedUserName.contains(normalizedQuery);
      if (lDistance < 3 || containsId || containsName) {
        matchingUsers[user] = lDistance;
      }
    }

    final entries = matchingUsers.entries.toList(growable: false)
      ..sort((prev, curr) {
        bool containsQuery(User user) =>
            normalize(user.uid).contains(normalizedQuery) ||
            normalize(user.username!).contains(normalizedQuery);

        final containsInPrev = containsQuery(prev.key);
        final containsInCurr = containsQuery(curr.key);

        if (containsInPrev && !containsInCurr) {
          return -1;
        } else if (!containsInPrev && containsInCurr) {
          return 1;
        }
        return prev.value.compareTo(curr.value);
      });

    return entries.map((e) => e.key).toList(growable: false);
  }
}
