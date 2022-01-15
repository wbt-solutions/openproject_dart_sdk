//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class RootLinks {
  /// Returns a new [RootLinks] instance.
  RootLinks({
    this.configuration,
    this.user,
    this.userPreferences,
    this.priorities,
    this.relations,
    this.statuses,
    this.types,
    this.workPackages,
    this.users,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Link? configuration;

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
  Link? userPreferences;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Link? priorities;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Link? relations;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Link? statuses;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Link? types;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Link? workPackages;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Link? users;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RootLinks &&
     other.configuration == configuration &&
     other.user == user &&
     other.userPreferences == userPreferences &&
     other.priorities == priorities &&
     other.relations == relations &&
     other.statuses == statuses &&
     other.types == types &&
     other.workPackages == workPackages &&
     other.users == users;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (configuration == null ? 0 : configuration!.hashCode) +
    (user == null ? 0 : user!.hashCode) +
    (userPreferences == null ? 0 : userPreferences!.hashCode) +
    (priorities == null ? 0 : priorities!.hashCode) +
    (relations == null ? 0 : relations!.hashCode) +
    (statuses == null ? 0 : statuses!.hashCode) +
    (types == null ? 0 : types!.hashCode) +
    (workPackages == null ? 0 : workPackages!.hashCode) +
    (users == null ? 0 : users!.hashCode);

  @override
  String toString() => 'RootLinks[configuration=$configuration, user=$user, userPreferences=$userPreferences, priorities=$priorities, relations=$relations, statuses=$statuses, types=$types, workPackages=$workPackages, users=$users]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (configuration != null) {
      json[r'configuration'] = configuration;
    }
    if (user != null) {
      json[r'user'] = user;
    }
    if (userPreferences != null) {
      json[r'userPreferences'] = userPreferences;
    }
    if (priorities != null) {
      json[r'priorities'] = priorities;
    }
    if (relations != null) {
      json[r'relations'] = relations;
    }
    if (statuses != null) {
      json[r'statuses'] = statuses;
    }
    if (types != null) {
      json[r'types'] = types;
    }
    if (workPackages != null) {
      json[r'workPackages'] = workPackages;
    }
    if (users != null) {
      json[r'users'] = users;
    }
    return json;
  }

  /// Returns a new [RootLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RootLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RootLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RootLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RootLinks(
        configuration: Link.fromJson(json[r'configuration']),
        user: Link.fromJson(json[r'user']),
        userPreferences: Link.fromJson(json[r'userPreferences']),
        priorities: Link.fromJson(json[r'priorities']),
        relations: Link.fromJson(json[r'relations']),
        statuses: Link.fromJson(json[r'statuses']),
        types: Link.fromJson(json[r'types']),
        workPackages: Link.fromJson(json[r'workPackages']),
        users: Link.fromJson(json[r'users']),
      );
    }
    return null;
  }

  static List<RootLinks>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RootLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RootLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RootLinks> mapFromJson(dynamic json) {
    final map = <String, RootLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RootLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RootLinks-objects as value to a dart map
  static Map<String, List<RootLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RootLinks>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RootLinks.listFromJson(entry.value, growable: growable,);
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

