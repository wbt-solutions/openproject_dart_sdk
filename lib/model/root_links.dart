//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
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

  Link configuration;

  Link user;

  Link userPreferences;

  Link priorities;

  Link relations;

  Link statuses;

  Link types;

  Link workPackages;

  Link users;

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
    (configuration == null ? 0 : configuration.hashCode) +
    (user == null ? 0 : user.hashCode) +
    (userPreferences == null ? 0 : userPreferences.hashCode) +
    (priorities == null ? 0 : priorities.hashCode) +
    (relations == null ? 0 : relations.hashCode) +
    (statuses == null ? 0 : statuses.hashCode) +
    (types == null ? 0 : types.hashCode) +
    (workPackages == null ? 0 : workPackages.hashCode) +
    (users == null ? 0 : users.hashCode);

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
  /// [json] if it's non-null, null if [json] is null.
  static RootLinks fromJson(Map<String, dynamic> json) => json == null
    ? null
    : RootLinks(
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

  static List<RootLinks> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <RootLinks>[]
      : json.map((v) => RootLinks.fromJson(v)).toList(growable: true == growable);

  static Map<String, RootLinks> mapFromJson(Map<String, dynamic> json) {
    final map = <String, RootLinks>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = RootLinks.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of RootLinks-objects as value to a dart map
  static Map<String, List<RootLinks>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<RootLinks>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = RootLinks.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

