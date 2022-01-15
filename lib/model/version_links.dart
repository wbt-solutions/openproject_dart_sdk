//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class VersionLinks {
  /// Returns a new [VersionLinks] instance.
  VersionLinks({
    this.self,
    this.definingProject,
    this.availableInProjects,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Link? self;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Link? definingProject;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Link? availableInProjects;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VersionLinks &&
     other.self == self &&
     other.definingProject == definingProject &&
     other.availableInProjects == availableInProjects;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (self == null ? 0 : self!.hashCode) +
    (definingProject == null ? 0 : definingProject!.hashCode) +
    (availableInProjects == null ? 0 : availableInProjects!.hashCode);

  @override
  String toString() => 'VersionLinks[self=$self, definingProject=$definingProject, availableInProjects=$availableInProjects]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (self != null) {
      json[r'self'] = self;
    }
    if (definingProject != null) {
      json[r'definingProject'] = definingProject;
    }
    if (availableInProjects != null) {
      json[r'availableInProjects'] = availableInProjects;
    }
    return json;
  }

  /// Returns a new [VersionLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VersionLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "VersionLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "VersionLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return VersionLinks(
        self: Link.fromJson(json[r'self']),
        definingProject: Link.fromJson(json[r'definingProject']),
        availableInProjects: Link.fromJson(json[r'availableInProjects']),
      );
    }
    return null;
  }

  static List<VersionLinks>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VersionLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VersionLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VersionLinks> mapFromJson(dynamic json) {
    final map = <String, VersionLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VersionLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VersionLinks-objects as value to a dart map
  static Map<String, List<VersionLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VersionLinks>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VersionLinks.listFromJson(entry.value, growable: growable,);
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

