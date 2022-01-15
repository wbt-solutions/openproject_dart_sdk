//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class Digest {
  /// Returns a new [Digest] instance.
  Digest({
    this.algorithm,
    this.hash,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? algorithm;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? hash;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Digest &&
     other.algorithm == algorithm &&
     other.hash == hash;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (algorithm == null ? 0 : algorithm!.hashCode) +
    (hash == null ? 0 : hash!.hashCode);

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
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Digest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Digest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Digest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Digest(
        algorithm: mapValueOfType<String>(json, r'algorithm'),
        hash: mapValueOfType<String>(json, r'hash'),
      );
    }
    return null;
  }

  static List<Digest>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Digest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Digest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Digest> mapFromJson(dynamic json) {
    final map = <String, Digest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Digest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Digest-objects as value to a dart map
  static Map<String, List<Digest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Digest>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Digest.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

