//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class WorkPackages {
  /// Returns a new [WorkPackages] instance.
  WorkPackages({
    this.total,
    this.count,
    this.embedded,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? total;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? count;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  WorkPackagesEmbedded? embedded;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WorkPackages &&
     other.total == total &&
     other.count == count &&
     other.embedded == embedded;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (total == null ? 0 : total!.hashCode) +
    (count == null ? 0 : count!.hashCode) +
    (embedded == null ? 0 : embedded!.hashCode);

  @override
  String toString() => 'WorkPackages[total=$total, count=$count, embedded=$embedded]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (total != null) {
      json[r'total'] = total;
    }
    if (count != null) {
      json[r'count'] = count;
    }
    if (embedded != null) {
      json[r'_embedded'] = embedded;
    }
    return json;
  }

  /// Returns a new [WorkPackages] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WorkPackages? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WorkPackages[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WorkPackages[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WorkPackages(
        total: mapValueOfType<int>(json, r'total'),
        count: mapValueOfType<int>(json, r'count'),
        embedded: WorkPackagesEmbedded.fromJson(json[r'_embedded']),
      );
    }
    return null;
  }

  static List<WorkPackages>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WorkPackages>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WorkPackages.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WorkPackages> mapFromJson(dynamic json) {
    final map = <String, WorkPackages>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WorkPackages.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WorkPackages-objects as value to a dart map
  static Map<String, List<WorkPackages>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WorkPackages>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WorkPackages.listFromJson(entry.value, growable: growable,);
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

