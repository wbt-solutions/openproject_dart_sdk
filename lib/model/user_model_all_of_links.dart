//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class UserModelAllOfLinks {
  /// Returns a new [UserModelAllOfLinks] instance.
  UserModelAllOfLinks({
    this.showUser,
    this.updateImmediately,
    this.lock,
    this.unlock,
    this.delete,
    this.authSource,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  UserModelAllOfLinksShowUser? showUser;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  UserModelAllOfLinksUpdateImmediately? updateImmediately;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  UserModelAllOfLinksLock? lock;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  UserModelAllOfLinksUnlock? unlock;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  UserModelAllOfLinksDelete? delete;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  UserModelAllOfLinksAuthSource? authSource;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserModelAllOfLinks &&
    other.showUser == showUser &&
    other.updateImmediately == updateImmediately &&
    other.lock == lock &&
    other.unlock == unlock &&
    other.delete == delete &&
    other.authSource == authSource;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (showUser == null ? 0 : showUser!.hashCode) +
    (updateImmediately == null ? 0 : updateImmediately!.hashCode) +
    (lock == null ? 0 : lock!.hashCode) +
    (unlock == null ? 0 : unlock!.hashCode) +
    (delete == null ? 0 : delete!.hashCode) +
    (authSource == null ? 0 : authSource!.hashCode);

  @override
  String toString() => 'UserModelAllOfLinks[showUser=$showUser, updateImmediately=$updateImmediately, lock=$lock, unlock=$unlock, delete=$delete, authSource=$authSource]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.showUser != null) {
      json[r'showUser'] = this.showUser;
    } else {
      json[r'showUser'] = null;
    }
    if (this.updateImmediately != null) {
      json[r'updateImmediately'] = this.updateImmediately;
    } else {
      json[r'updateImmediately'] = null;
    }
    if (this.lock != null) {
      json[r'lock'] = this.lock;
    } else {
      json[r'lock'] = null;
    }
    if (this.unlock != null) {
      json[r'unlock'] = this.unlock;
    } else {
      json[r'unlock'] = null;
    }
    if (this.delete != null) {
      json[r'delete'] = this.delete;
    } else {
      json[r'delete'] = null;
    }
    if (this.authSource != null) {
      json[r'authSource'] = this.authSource;
    } else {
      json[r'authSource'] = null;
    }
    return json;
  }

  /// Returns a new [UserModelAllOfLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserModelAllOfLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserModelAllOfLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserModelAllOfLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserModelAllOfLinks(
        showUser: UserModelAllOfLinksShowUser.fromJson(json[r'showUser']),
        updateImmediately: UserModelAllOfLinksUpdateImmediately.fromJson(json[r'updateImmediately']),
        lock: UserModelAllOfLinksLock.fromJson(json[r'lock']),
        unlock: UserModelAllOfLinksUnlock.fromJson(json[r'unlock']),
        delete: UserModelAllOfLinksDelete.fromJson(json[r'delete']),
        authSource: UserModelAllOfLinksAuthSource.fromJson(json[r'authSource']),
      );
    }
    return null;
  }

  static List<UserModelAllOfLinks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserModelAllOfLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserModelAllOfLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserModelAllOfLinks> mapFromJson(dynamic json) {
    final map = <String, UserModelAllOfLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserModelAllOfLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserModelAllOfLinks-objects as value to a dart map
  static Map<String, List<UserModelAllOfLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserModelAllOfLinks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserModelAllOfLinks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

