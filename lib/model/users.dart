//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Users {
  /// Returns a new [Users] instance.
  Users({
    this.total,
    this.count,
    this.embedded,
  });

  int total;

  int count;

  UsersEmbedded embedded;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Users &&
     other.total == total &&
     other.count == count &&
     other.embedded == embedded;

  @override
  int get hashCode =>
    (total == null ? 0 : total.hashCode) +
    (count == null ? 0 : count.hashCode) +
    (embedded == null ? 0 : embedded.hashCode);

  @override
  String toString() => 'Users[total=$total, count=$count, embedded=$embedded]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (total != null) {
      json[r'total'] = total;
    }
    if (count != null) {
      json[r'count'] = count;
    }
    if (embedded != null) {
      json[r'_embedded'] = embedded;
    }
    return json;
  }

  /// Returns a new [Users] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Users fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Users(
        total: json[r'total'],
        count: json[r'count'],
        embedded: UsersEmbedded.fromJson(json[r'_embedded']),
    );

  static List<Users> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Users>[]
      : json.map((v) => Users.fromJson(v)).toList(growable: true == growable);

  static Map<String, Users> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Users>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = Users.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of Users-objects as value to a dart map
  static Map<String, List<Users>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Users>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = Users.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

