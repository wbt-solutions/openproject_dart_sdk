//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class TimeEntryCollectionModelAllOfLinks {
  /// Returns a new [TimeEntryCollectionModelAllOfLinks] instance.
  TimeEntryCollectionModelAllOfLinks({
    required this.self,
  });

  TimeEntryCollectionModelAllOfLinksSelf self;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TimeEntryCollectionModelAllOfLinks &&
    other.self == self;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (self.hashCode);

  @override
  String toString() => 'TimeEntryCollectionModelAllOfLinks[self=$self]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'self'] = this.self;
    return json;
  }

  /// Returns a new [TimeEntryCollectionModelAllOfLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TimeEntryCollectionModelAllOfLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TimeEntryCollectionModelAllOfLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TimeEntryCollectionModelAllOfLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TimeEntryCollectionModelAllOfLinks(
        self: TimeEntryCollectionModelAllOfLinksSelf.fromJson(json[r'self'])!,
      );
    }
    return null;
  }

  static List<TimeEntryCollectionModelAllOfLinks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TimeEntryCollectionModelAllOfLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TimeEntryCollectionModelAllOfLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TimeEntryCollectionModelAllOfLinks> mapFromJson(dynamic json) {
    final map = <String, TimeEntryCollectionModelAllOfLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TimeEntryCollectionModelAllOfLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TimeEntryCollectionModelAllOfLinks-objects as value to a dart map
  static Map<String, List<TimeEntryCollectionModelAllOfLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TimeEntryCollectionModelAllOfLinks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TimeEntryCollectionModelAllOfLinks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'self',
  };
}

