//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class Projects {
  /// Returns a new [Projects] instance.
  Projects({
    this.total,
    this.count,
    this.embedded,
    this.links,
  });

  int total;

  int count;

  ProjectsEmbedded embedded;

  ProjectsLinks links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Projects &&
     other.total == total &&
     other.count == count &&
     other.embedded == embedded &&
     other.links == links;

  @override
  int get hashCode =>
    (total == null ? 0 : total.hashCode) +
    (count == null ? 0 : count.hashCode) +
    (embedded == null ? 0 : embedded.hashCode) +
    (links == null ? 0 : links.hashCode);

  @override
  String toString() => 'Projects[total=$total, count=$count, embedded=$embedded, links=$links]';

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
    if (links != null) {
      json[r'_links'] = links;
    }
    return json;
  }

  /// Returns a new [Projects] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Projects fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Projects(
        total: json[r'total'],
        count: json[r'count'],
        embedded: ProjectsEmbedded.fromJson(json[r'_embedded']),
        links: ProjectsLinks.fromJson(json[r'_links']),
    );

  static List<Projects> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Projects>[]
      : json.map((v) => Projects.fromJson(v)).toList(growable: true == growable);

  static Map<String, Projects> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Projects>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = Projects.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of Projects-objects as value to a dart map
  static Map<String, List<Projects>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Projects>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = Projects.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

