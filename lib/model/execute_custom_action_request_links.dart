//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class ExecuteCustomActionRequestLinks {
  /// Returns a new [ExecuteCustomActionRequestLinks] instance.
  ExecuteCustomActionRequestLinks({
    this.workPackage,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ExecuteCustomActionRequestLinksWorkPackage? workPackage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ExecuteCustomActionRequestLinks &&
    other.workPackage == workPackage;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (workPackage == null ? 0 : workPackage!.hashCode);

  @override
  String toString() => 'ExecuteCustomActionRequestLinks[workPackage=$workPackage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.workPackage != null) {
      json[r'workPackage'] = this.workPackage;
    } else {
      json[r'workPackage'] = null;
    }
    return json;
  }

  /// Returns a new [ExecuteCustomActionRequestLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ExecuteCustomActionRequestLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ExecuteCustomActionRequestLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ExecuteCustomActionRequestLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ExecuteCustomActionRequestLinks(
        workPackage: ExecuteCustomActionRequestLinksWorkPackage.fromJson(json[r'workPackage']),
      );
    }
    return null;
  }

  static List<ExecuteCustomActionRequestLinks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ExecuteCustomActionRequestLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ExecuteCustomActionRequestLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ExecuteCustomActionRequestLinks> mapFromJson(dynamic json) {
    final map = <String, ExecuteCustomActionRequestLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ExecuteCustomActionRequestLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ExecuteCustomActionRequestLinks-objects as value to a dart map
  static Map<String, List<ExecuteCustomActionRequestLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ExecuteCustomActionRequestLinks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ExecuteCustomActionRequestLinks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

