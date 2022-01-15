//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class UserPreferences {
  /// Returns a new [UserPreferences] instance.
  UserPreferences({
    this.hideMail,
    this.timeZone,
    this.commentSortDescending,
    this.warnOnLeavingUnsaved,
    this.accessibilityMode,
    this.links,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hideMail;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? timeZone;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? commentSortDescending;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? warnOnLeavingUnsaved;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? accessibilityMode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  UserPreferencesLinks? links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserPreferences &&
     other.hideMail == hideMail &&
     other.timeZone == timeZone &&
     other.commentSortDescending == commentSortDescending &&
     other.warnOnLeavingUnsaved == warnOnLeavingUnsaved &&
     other.accessibilityMode == accessibilityMode &&
     other.links == links;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (hideMail == null ? 0 : hideMail!.hashCode) +
    (timeZone == null ? 0 : timeZone!.hashCode) +
    (commentSortDescending == null ? 0 : commentSortDescending!.hashCode) +
    (warnOnLeavingUnsaved == null ? 0 : warnOnLeavingUnsaved!.hashCode) +
    (accessibilityMode == null ? 0 : accessibilityMode!.hashCode) +
    (links == null ? 0 : links!.hashCode);

  @override
  String toString() => 'UserPreferences[hideMail=$hideMail, timeZone=$timeZone, commentSortDescending=$commentSortDescending, warnOnLeavingUnsaved=$warnOnLeavingUnsaved, accessibilityMode=$accessibilityMode, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (hideMail != null) {
      json[r'hideMail'] = hideMail;
    }
    if (timeZone != null) {
      json[r'timeZone'] = timeZone;
    }
    if (commentSortDescending != null) {
      json[r'commentSortDescending'] = commentSortDescending;
    }
    if (warnOnLeavingUnsaved != null) {
      json[r'warnOnLeavingUnsaved'] = warnOnLeavingUnsaved;
    }
    if (accessibilityMode != null) {
      json[r'accessibilityMode'] = accessibilityMode;
    }
    if (links != null) {
      json[r'_links'] = links;
    }
    return json;
  }

  /// Returns a new [UserPreferences] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserPreferences? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserPreferences[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserPreferences[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserPreferences(
        hideMail: mapValueOfType<bool>(json, r'hideMail'),
        timeZone: mapValueOfType<String>(json, r'timeZone'),
        commentSortDescending: mapValueOfType<bool>(json, r'commentSortDescending'),
        warnOnLeavingUnsaved: mapValueOfType<bool>(json, r'warnOnLeavingUnsaved'),
        accessibilityMode: mapValueOfType<bool>(json, r'accessibilityMode'),
        links: UserPreferencesLinks.fromJson(json[r'_links']),
      );
    }
    return null;
  }

  static List<UserPreferences>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserPreferences>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserPreferences.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserPreferences> mapFromJson(dynamic json) {
    final map = <String, UserPreferences>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserPreferences.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserPreferences-objects as value to a dart map
  static Map<String, List<UserPreferences>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserPreferences>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserPreferences.listFromJson(entry.value, growable: growable,);
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

