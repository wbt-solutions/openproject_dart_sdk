//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class UserPreferencesLinks {
  /// Returns a new [UserPreferencesLinks] instance.
  UserPreferencesLinks({
    this.self,
    this.user,
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
  Link? user;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserPreferencesLinks &&
     other.self == self &&
     other.user == user;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (self == null ? 0 : self!.hashCode) +
    (user == null ? 0 : user!.hashCode);

  @override
  String toString() => 'UserPreferencesLinks[self=$self, user=$user]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (self != null) {
      json[r'self'] = self;
    }
    if (user != null) {
      json[r'user'] = user;
    }
    return json;
  }

  /// Returns a new [UserPreferencesLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserPreferencesLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserPreferencesLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserPreferencesLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserPreferencesLinks(
        self: Link.fromJson(json[r'self']),
        user: Link.fromJson(json[r'user']),
      );
    }
    return null;
  }

  static List<UserPreferencesLinks>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserPreferencesLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserPreferencesLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserPreferencesLinks> mapFromJson(dynamic json) {
    final map = <String, UserPreferencesLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserPreferencesLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserPreferencesLinks-objects as value to a dart map
  static Map<String, List<UserPreferencesLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserPreferencesLinks>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserPreferencesLinks.listFromJson(entry.value, growable: growable,);
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

