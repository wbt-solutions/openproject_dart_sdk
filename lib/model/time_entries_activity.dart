//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class TimeEntriesActivity {
  /// Returns a new [TimeEntriesActivity] instance.
  TimeEntriesActivity({
    this.id,
    this.name,
    this.position,
    this.default_,
    this.embedded,
    this.links,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? position;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? default_;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TimeEntriesActivityEmbedded? embedded;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TimeEntriesActivityLinks? links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TimeEntriesActivity &&
     other.id == id &&
     other.name == name &&
     other.position == position &&
     other.default_ == default_ &&
     other.embedded == embedded &&
     other.links == links;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (position == null ? 0 : position!.hashCode) +
    (default_ == null ? 0 : default_!.hashCode) +
    (embedded == null ? 0 : embedded!.hashCode) +
    (links == null ? 0 : links!.hashCode);

  @override
  String toString() => 'TimeEntriesActivity[id=$id, name=$name, position=$position, default_=$default_, embedded=$embedded, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (position != null) {
      json[r'position'] = position;
    }
    if (default_ != null) {
      json[r'default'] = default_;
    }
    if (embedded != null) {
      json[r'_embedded'] = embedded;
    }
    if (links != null) {
      json[r'_links'] = links;
    }
    return json;
  }

  /// Returns a new [TimeEntriesActivity] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TimeEntriesActivity? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TimeEntriesActivity[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TimeEntriesActivity[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TimeEntriesActivity(
        id: mapValueOfType<int>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        position: mapValueOfType<int>(json, r'position'),
        default_: mapValueOfType<bool>(json, r'default'),
        embedded: TimeEntriesActivityEmbedded.fromJson(json[r'_embedded']),
        links: TimeEntriesActivityLinks.fromJson(json[r'_links']),
      );
    }
    return null;
  }

  static List<TimeEntriesActivity>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TimeEntriesActivity>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TimeEntriesActivity.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TimeEntriesActivity> mapFromJson(dynamic json) {
    final map = <String, TimeEntriesActivity>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TimeEntriesActivity.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TimeEntriesActivity-objects as value to a dart map
  static Map<String, List<TimeEntriesActivity>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TimeEntriesActivity>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TimeEntriesActivity.listFromJson(entry.value, growable: growable,);
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

