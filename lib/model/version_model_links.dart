//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class VersionModelLinks {
  /// Returns a new [VersionModelLinks] instance.
  VersionModelLinks({
    this.update,
    this.updateImmediately,
    required this.self,
    this.definingProject,
    required this.availableInProjects,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  VersionModelLinksUpdate? update;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  VersionModelLinksUpdateImmediately? updateImmediately;

  VersionModelLinksSelf self;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  VersionModelLinksDefiningProject? definingProject;

  VersionModelLinksAvailableInProjects availableInProjects;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VersionModelLinks &&
    other.update == update &&
    other.updateImmediately == updateImmediately &&
    other.self == self &&
    other.definingProject == definingProject &&
    other.availableInProjects == availableInProjects;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (update == null ? 0 : update!.hashCode) +
    (updateImmediately == null ? 0 : updateImmediately!.hashCode) +
    (self.hashCode) +
    (definingProject == null ? 0 : definingProject!.hashCode) +
    (availableInProjects.hashCode);

  @override
  String toString() => 'VersionModelLinks[update=$update, updateImmediately=$updateImmediately, self=$self, definingProject=$definingProject, availableInProjects=$availableInProjects]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.update != null) {
      json[r'update'] = this.update;
    } else {
      json[r'update'] = null;
    }
    if (this.updateImmediately != null) {
      json[r'updateImmediately'] = this.updateImmediately;
    } else {
      json[r'updateImmediately'] = null;
    }
      json[r'self'] = this.self;
    if (this.definingProject != null) {
      json[r'definingProject'] = this.definingProject;
    } else {
      json[r'definingProject'] = null;
    }
      json[r'availableInProjects'] = this.availableInProjects;
    return json;
  }

  /// Returns a new [VersionModelLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VersionModelLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "VersionModelLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "VersionModelLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return VersionModelLinks(
        update: VersionModelLinksUpdate.fromJson(json[r'update']),
        updateImmediately: VersionModelLinksUpdateImmediately.fromJson(json[r'updateImmediately']),
        self: VersionModelLinksSelf.fromJson(json[r'self'])!,
        definingProject: VersionModelLinksDefiningProject.fromJson(json[r'definingProject']),
        availableInProjects: VersionModelLinksAvailableInProjects.fromJson(json[r'availableInProjects'])!,
      );
    }
    return null;
  }

  static List<VersionModelLinks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VersionModelLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VersionModelLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VersionModelLinks> mapFromJson(dynamic json) {
    final map = <String, VersionModelLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VersionModelLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VersionModelLinks-objects as value to a dart map
  static Map<String, List<VersionModelLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VersionModelLinks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VersionModelLinks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'self',
    'availableInProjects',
  };
}

