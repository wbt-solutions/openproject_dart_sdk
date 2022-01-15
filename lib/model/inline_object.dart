//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class InlineObject {
  /// Returns a new [InlineObject] instance.
  InlineObject({
    this.lockVersion,
    this.links,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lockVersion;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ApiV3CustomActionsCustomActionIdExecuteLinks? links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InlineObject &&
     other.lockVersion == lockVersion &&
     other.links == links;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (lockVersion == null ? 0 : lockVersion!.hashCode) +
    (links == null ? 0 : links!.hashCode);

  @override
  String toString() => 'InlineObject[lockVersion=$lockVersion, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (lockVersion != null) {
      json[r'lockVersion'] = lockVersion;
    }
    if (links != null) {
      json[r'_links'] = links;
    }
    return json;
  }

  /// Returns a new [InlineObject] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InlineObject? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InlineObject[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InlineObject[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InlineObject(
        lockVersion: mapValueOfType<String>(json, r'lockVersion'),
        links: ApiV3CustomActionsCustomActionIdExecuteLinks.fromJson(json[r'_links']),
      );
    }
    return null;
  }

  static List<InlineObject>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InlineObject>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InlineObject.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InlineObject> mapFromJson(dynamic json) {
    final map = <String, InlineObject>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InlineObject.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InlineObject-objects as value to a dart map
  static Map<String, List<InlineObject>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InlineObject>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InlineObject.listFromJson(entry.value, growable: growable,);
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

