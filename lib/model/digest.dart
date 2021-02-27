//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Digest {
  /// Returns a new [Digest] instance.
  Digest({
    this.algorithm,
    this.hash,
  });

  String algorithm;

  String hash;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Digest &&
     other.algorithm == algorithm &&
     other.hash == hash;

  @override
  int get hashCode =>
    (algorithm == null ? 0 : algorithm.hashCode) +
    (hash == null ? 0 : hash.hashCode);

  @override
  String toString() => 'Digest[algorithm=$algorithm, hash=$hash]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (algorithm != null) {
      json[r'algorithm'] = algorithm;
    }
    if (hash != null) {
      json[r'hash'] = hash;
    }
    return json;
  }

  /// Returns a new [Digest] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Digest fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Digest(
        algorithm: json[r'algorithm'],
        hash: json[r'hash'],
    );

  static List<Digest> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Digest>[]
      : json.map((v) => Digest.fromJson(v)).toList(growable: true == growable);

  static Map<String, Digest> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Digest>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = Digest.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of Digest-objects as value to a dart map
  static Map<String, List<Digest>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Digest>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = Digest.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

