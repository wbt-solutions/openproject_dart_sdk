//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class TimeEntriesActivityEmbedded {
  /// Returns a new [TimeEntriesActivityEmbedded] instance.
  TimeEntriesActivityEmbedded({
    this.projects = const [],
  });

  List<Project> projects;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TimeEntriesActivityEmbedded &&
     other.projects == projects;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (projects.hashCode);

  @override
  String toString() => 'TimeEntriesActivityEmbedded[projects=$projects]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'projects'] = projects;
    return json;
  }

  /// Returns a new [TimeEntriesActivityEmbedded] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TimeEntriesActivityEmbedded? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TimeEntriesActivityEmbedded[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TimeEntriesActivityEmbedded[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TimeEntriesActivityEmbedded(
        projects: Project.listFromJson(json[r'projects']) ?? const [],
      );
    }
    return null;
  }

  static List<TimeEntriesActivityEmbedded>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TimeEntriesActivityEmbedded>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TimeEntriesActivityEmbedded.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TimeEntriesActivityEmbedded> mapFromJson(dynamic json) {
    final map = <String, TimeEntriesActivityEmbedded>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TimeEntriesActivityEmbedded.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TimeEntriesActivityEmbedded-objects as value to a dart map
  static Map<String, List<TimeEntriesActivityEmbedded>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TimeEntriesActivityEmbedded>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TimeEntriesActivityEmbedded.listFromJson(entry.value, growable: growable,);
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

