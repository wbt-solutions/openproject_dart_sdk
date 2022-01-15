//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class TimeEntryLinks {
  /// Returns a new [TimeEntryLinks] instance.
  TimeEntryLinks({
    this.self,
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
  Link? self;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Link? project;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Link? workPackage;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Link? user;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Link? activity;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TimeEntryLinks &&
     other.self == self &&
     other.project == project &&
     other.workPackage == workPackage &&
     other.user == user &&
     other.activity == activity;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (self == null ? 0 : self!.hashCode) +
    (project == null ? 0 : project!.hashCode) +
    (workPackage == null ? 0 : workPackage!.hashCode) +
    (user == null ? 0 : user!.hashCode) +
    (activity == null ? 0 : activity!.hashCode);

  @override
  String toString() => 'TimeEntryLinks[self=$self, project=$project, workPackage=$workPackage, user=$user, activity=$activity]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (self != null) {
      json[r'self'] = self;
    }
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

  /// Returns a new [TimeEntryLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TimeEntryLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TimeEntryLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TimeEntryLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TimeEntryLinks(
        self: Link.fromJson(json[r'self']),
        project: Link.fromJson(json[r'project']),
        workPackage: Link.fromJson(json[r'workPackage']),
        user: Link.fromJson(json[r'user']),
        activity: Link.fromJson(json[r'activity']),
      );
    }
    return null;
  }

  static List<TimeEntryLinks>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TimeEntryLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TimeEntryLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TimeEntryLinks> mapFromJson(dynamic json) {
    final map = <String, TimeEntryLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TimeEntryLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TimeEntryLinks-objects as value to a dart map
  static Map<String, List<TimeEntryLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TimeEntryLinks>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TimeEntryLinks.listFromJson(entry.value, growable: growable,);
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

