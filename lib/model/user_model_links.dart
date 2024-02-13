//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class UserModelLinks {
  /// Returns a new [UserModelLinks] instance.
  UserModelLinks({
    required this.self,
    required this.memberships,
    required this.showUser,
    this.updateImmediately,
    this.lock,
    this.unlock,
    this.delete,
  });

  UserModelLinksSelf self;

  UserModelLinksMemberships memberships;

  UserModelLinksShowUser showUser;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  UserModelLinksUpdateImmediately? updateImmediately;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  UserModelLinksLock? lock;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  UserModelLinksUnlock? unlock;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  UserModelLinksDelete? delete;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserModelLinks &&
    other.self == self &&
    other.memberships == memberships &&
    other.showUser == showUser &&
    other.updateImmediately == updateImmediately &&
    other.lock == lock &&
    other.unlock == unlock &&
    other.delete == delete;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (self.hashCode) +
    (memberships.hashCode) +
    (showUser.hashCode) +
    (updateImmediately == null ? 0 : updateImmediately!.hashCode) +
    (lock == null ? 0 : lock!.hashCode) +
    (unlock == null ? 0 : unlock!.hashCode) +
    (delete == null ? 0 : delete!.hashCode);

  @override
  String toString() => 'UserModelLinks[self=$self, memberships=$memberships, showUser=$showUser, updateImmediately=$updateImmediately, lock=$lock, unlock=$unlock, delete=$delete]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'self'] = this.self;
      json[r'memberships'] = this.memberships;
      json[r'showUser'] = this.showUser;
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
    return json;
  }

  /// Returns a new [UserModelLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserModelLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserModelLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserModelLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserModelLinks(
        self: UserModelLinksSelf.fromJson(json[r'self'])!,
        memberships: UserModelLinksMemberships.fromJson(json[r'memberships'])!,
        showUser: UserModelLinksShowUser.fromJson(json[r'showUser'])!,
        updateImmediately: UserModelLinksUpdateImmediately.fromJson(json[r'updateImmediately']),
        lock: UserModelLinksLock.fromJson(json[r'lock']),
        unlock: UserModelLinksUnlock.fromJson(json[r'unlock']),
        delete: UserModelLinksDelete.fromJson(json[r'delete']),
      );
    }
    return null;
  }

  static List<UserModelLinks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserModelLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserModelLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserModelLinks> mapFromJson(dynamic json) {
    final map = <String, UserModelLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserModelLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserModelLinks-objects as value to a dart map
  static Map<String, List<UserModelLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserModelLinks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserModelLinks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'self',
    'memberships',
    'showUser',
  };
}

