//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class TimeEntriesActivityLinks {
  /// Returns a new [TimeEntriesActivityLinks] instance.
  TimeEntriesActivityLinks({
    this.self,
    this.projects = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Link? self;

  List<Link> projects;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TimeEntriesActivityLinks &&
     other.self == self &&
     other.projects == projects;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (self == null ? 0 : self!.hashCode) +
    (projects.hashCode);

  @override
  String toString() => 'TimeEntriesActivityLinks[self=$self, projects=$projects]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (self != null) {
      json[r'self'] = self;
    }
      json[r'projects'] = projects;
    return json;
  }

  /// Returns a new [TimeEntriesActivityLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TimeEntriesActivityLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TimeEntriesActivityLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TimeEntriesActivityLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TimeEntriesActivityLinks(
        self: Link.fromJson(json[r'self']),
        projects: Link.listFromJson(json[r'projects']) ?? const [],
      );
    }
    return null;
  }

  static List<TimeEntriesActivityLinks>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TimeEntriesActivityLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TimeEntriesActivityLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TimeEntriesActivityLinks> mapFromJson(dynamic json) {
    final map = <String, TimeEntriesActivityLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TimeEntriesActivityLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TimeEntriesActivityLinks-objects as value to a dart map
  static Map<String, List<TimeEntriesActivityLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TimeEntriesActivityLinks>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TimeEntriesActivityLinks.listFromJson(entry.value, growable: growable,);
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

