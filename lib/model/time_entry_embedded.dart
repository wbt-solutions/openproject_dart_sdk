//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class TimeEntryEmbedded {
  /// Returns a new [TimeEntryEmbedded] instance.
  TimeEntryEmbedded({
    this.project,
    this.workPackage,
    this.user,
    this.activity,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Project? project;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  WorkPackage? workPackage;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  User? user;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Activity? activity;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TimeEntryEmbedded &&
     other.project == project &&
     other.workPackage == workPackage &&
     other.user == user &&
     other.activity == activity;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (project == null ? 0 : project!.hashCode) +
    (workPackage == null ? 0 : workPackage!.hashCode) +
    (user == null ? 0 : user!.hashCode) +
    (activity == null ? 0 : activity!.hashCode);

  @override
  String toString() => 'TimeEntryEmbedded[project=$project, workPackage=$workPackage, user=$user, activity=$activity]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (project != null) {
      json[r'project'] = project;
    }
    if (workPackage != null) {
      json[r'workPackage'] = workPackage;
    }
    if (user != null) {
      json[r'user'] = user;
    }
    if (activity != null) {
      json[r'activity'] = activity;
    }
    return json;
  }

  /// Returns a new [TimeEntryEmbedded] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TimeEntryEmbedded? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TimeEntryEmbedded[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TimeEntryEmbedded[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TimeEntryEmbedded(
        project: Project.fromJson(json[r'project']),
        workPackage: WorkPackage.fromJson(json[r'workPackage']),
        user: User.fromJson(json[r'user']),
        activity: Activity.fromJson(json[r'activity']),
      );
    }
    return null;
  }

  static List<TimeEntryEmbedded>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TimeEntryEmbedded>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TimeEntryEmbedded.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TimeEntryEmbedded> mapFromJson(dynamic json) {
    final map = <String, TimeEntryEmbedded>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TimeEntryEmbedded.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TimeEntryEmbedded-objects as value to a dart map
  static Map<String, List<TimeEntryEmbedded>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TimeEntryEmbedded>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TimeEntryEmbedded.listFromJson(entry.value, growable: growable,);
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

