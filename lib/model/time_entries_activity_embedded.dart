//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TimeEntriesActivityEmbedded {
  /// Returns a new [TimeEntriesActivityEmbedded] instance.
  TimeEntriesActivityEmbedded({
    this.projects = const [],
  });

  List<Project> projects;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TimeEntriesActivityEmbedded &&
     other.projects == projects;

  @override
  int get hashCode =>
    (projects == null ? 0 : projects.hashCode);

  @override
  String toString() => 'TimeEntriesActivityEmbedded[projects=$projects]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (projects != null) {
      json[r'projects'] = projects;
    }
    return json;
  }

  /// Returns a new [TimeEntriesActivityEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static TimeEntriesActivityEmbedded fromJson(Map<String, dynamic> json) => json == null
    ? null
    : TimeEntriesActivityEmbedded(
        projects: Project.listFromJson(json[r'projects']),
    );

  static List<TimeEntriesActivityEmbedded> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <TimeEntriesActivityEmbedded>[]
      : json.map((v) => TimeEntriesActivityEmbedded.fromJson(v)).toList(growable: true == growable);

  static Map<String, TimeEntriesActivityEmbedded> mapFromJson(Map<String, dynamic> json) {
    final map = <String, TimeEntriesActivityEmbedded>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = TimeEntriesActivityEmbedded.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of TimeEntriesActivityEmbedded-objects as value to a dart map
  static Map<String, List<TimeEntriesActivityEmbedded>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<TimeEntriesActivityEmbedded>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = TimeEntriesActivityEmbedded.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

