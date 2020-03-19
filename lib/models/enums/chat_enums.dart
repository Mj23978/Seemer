enum ChatStatus { blocked, waiting, requested, accepted }

enum MessageType { text, image }

enum AuthenticationType { passcode, biometric }

void unawaited(Future<void> future) {}
