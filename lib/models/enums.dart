enum ChatStatus { blocked, waiting, requested, accepted }

enum MessageType { text, audio, image, video }

enum MessageStatus {   
  /// Message is being sent
  sending,

  /// Message is being updated
  updating,

  /// Message is being deleted
  deleting,

  /// Message failed to send
  failed,

  /// Message failed to updated
  // ignore: constant_identifier_names
  failed_update,

  /// Message failed to delete
  // ignore: constant_identifier_names
  failed_delete,

  /// Message correctly sent
  sent,

  notSent, notViewed, viewed 
}

enum AuthenticationType { passcode, biometric }

enum AuthServiceType { firebase, mock }

enum ScreenShotType { download, share }

enum TimeWindow { day, week }

enum CallLogStatus { dialled, missed, recieved }

/// Used to notify the WS connection status
enum ConnectionStatus { connected, connecting, disconnected }
