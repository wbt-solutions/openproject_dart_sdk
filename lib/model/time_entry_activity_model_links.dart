//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class TimeEntryActivityModelLinks {
  /// Returns a new [TimeEntryActivityModelLinks] instance.
  TimeEntryActivityModelLinks({
    required this.self,
    this.projects = const [],
  });

  TimeEntryActivityModelLinksSelf self;

  List<TimeEntryActivityModelLinksProjectsInner> projects;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TimeEntryActivityModelLinks &&
    other.self == self &&
    _deepEquality.equals(other.projects, projects);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (self.hashCode) +
    (projects.hashCode);

  @override
  String toString() => 'TimeEntryActivityModelLinks[self=$self, projects=$projects]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'self'] = this.self;
      json[r'projects'] = this.projects;
    return json;
  }

  /// Returns a new [TimeEntryActivityModelLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TimeEntryActivityModelLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TimeEntryActivityModelLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TimeEntryActivityModelLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TimeEntryActivityModelLinks(
        self: TimeEntryActivityModelLinksSelf.fromJson(json[r'self'])!,
        projects: TimeEntryActivityModelLinksProjectsInner.listFromJson(json[r'projects']),
      );
    }
    return null;
  }

  static List<TimeEntryActivityModelLinks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TimeEntryActivityModelLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TimeEntryActivityModelLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TimeEntryActivityModelLinks> mapFromJson(dynamic json) {
    final map = <String, TimeEntryActivityModelLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TimeEntryActivityModelLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TimeEntryActivityModelLinks-objects as value to a dart map
  static Map<String, List<TimeEntryActivityModelLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TimeEntryActivityModelLinks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TimeEntryActivityModelLinks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'self',
    'projects',
  };
}

