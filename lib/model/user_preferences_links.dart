//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class UserPreferencesLinks {
  /// Returns a new [UserPreferencesLinks] instance.
  UserPreferencesLinks({
    this.self,
    this.user,
  });

  Link self;

  Link user;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserPreferencesLinks &&
     other.self == self &&
     other.user == user;

  @override
  int get hashCode =>
    (self == null ? 0 : self.hashCode) +
    (user == null ? 0 : user.hashCode);

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
  /// [json] if it's non-null, null if [json] is null.
  static UserPreferencesLinks fromJson(Map<String, dynamic> json) => json == null
    ? null
    : UserPreferencesLinks(
        self: Link.fromJson(json[r'self']),
        user: Link.fromJson(json[r'user']),
    );

  static List<UserPreferencesLinks> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <UserPreferencesLinks>[]
      : json.map((v) => UserPreferencesLinks.fromJson(v)).toList(growable: true == growable);

  static Map<String, UserPreferencesLinks> mapFromJson(Map<String, dynamic> json) {
    final map = <String, UserPreferencesLinks>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = UserPreferencesLinks.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of UserPreferencesLinks-objects as value to a dart map
  static Map<String, List<UserPreferencesLinks>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<UserPreferencesLinks>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = UserPreferencesLinks.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

