//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Activity {
  /// Returns a new [Activity] instance.
  Activity({
    this.id,
    this.version,
    this.comment,
    this.details = const [],
    this.createdAt,
    this.links,
  });

  int id;

  int version;

  Description comment;

  List<Description> details;

  DateTime createdAt;

  ActivityLinks links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Activity &&
     other.id == id &&
     other.version == version &&
     other.comment == comment &&
     other.details == details &&
     other.createdAt == createdAt &&
     other.links == links;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (version == null ? 0 : version.hashCode) +
    (comment == null ? 0 : comment.hashCode) +
    (details == null ? 0 : details.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (links == null ? 0 : links.hashCode);

  @override
  String toString() => 'Activity[id=$id, version=$version, comment=$comment, details=$details, createdAt=$createdAt, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (version != null) {
      json[r'version'] = version;
    }
    if (comment != null) {
      json[r'comment'] = comment;
    }
    if (details != null) {
      json[r'details'] = details;
    }
    if (createdAt != null) {
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
    }
    if (links != null) {
      json[r'_links'] = links;
    }
    return json;
  }

  /// Returns a new [Activity] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Activity fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Activity(
        id: json[r'id'],
        version: json[r'version'],
        comment: Description.fromJson(json[r'comment']),
        details: Description.listFromJson(json[r'details']),
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        links: ActivityLinks.fromJson(json[r'_links']),
    );

  static List<Activity> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Activity>[]
      : json.map((v) => Activity.fromJson(v)).toList(growable: true == growable);

  static Map<String, Activity> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Activity>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = Activity.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of Activity-objects as value to a dart map
  static Map<String, List<Activity>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Activity>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = Activity.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

