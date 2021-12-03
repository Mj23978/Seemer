import 'dart:convert';
import 'dart:typed_data';

class EncryptionKey {
  final Uint8List bytes;
  final bool isPublic;

  EncryptionKey(this.bytes) : this.isPublic = false;

  EncryptionKey.withPublicBytes(this.bytes) : this.isPublic = true;

  @override
  int get hashCode => bytes.length;

  @override
  operator ==(other) {
    if (other is EncryptionKey) {
      return _byteListEqual(bytes, other.bytes);
    }
    return false;
  }

  /// Returns  string representation of the key.
  ///
  /// If [isPublic] is true, returns the result of [toBase64].
  ///
  /// Otherwise a static string so developers don't accidentally print secrets
  /// keys.
  @override
  String toString() {
    if (isPublic) {
      return "Key('${toBase64()}')";
    }
    return "Key('some bytes')";
  }

  /// Returns a Key from the base64 representation
  static EncryptionKey fromBase64(String encoded, bool isPublic) {
    final bytes = base64.decode(encoded);
    if (isPublic) return EncryptionKey.withPublicBytes(bytes);
    return EncryptionKey(bytes);
  }

  /// Returns a base64 representation of the bytes.
  String toBase64() {
    return base64.encode(this.bytes);
  }

  static bool _byteListEqual(List<int> left, List<int> right) {
    if (left.length != right.length) {
      return false;
    }
    var result = true;
    for (var i = 0; i < left.length; i++) {
      if (left[i] != right[i]) {
        result = false;
      }
    }
    return result;
  }
}

/// Holds a secret key and a public key.
class AsymmetricKeyPair {
  final EncryptionKey publicKey;
  final EncryptionKey secretKey;

  AsymmetricKeyPair({ required this.secretKey, required this.publicKey});

  @override
  int get hashCode => publicKey.hashCode;

  @override
  operator ==(other) =>
      other is AsymmetricKeyPair &&
      secretKey == other.secretKey &&
      publicKey == other.publicKey;
}
