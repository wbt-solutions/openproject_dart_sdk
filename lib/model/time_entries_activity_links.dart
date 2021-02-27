//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TimeEntriesActivityLinks {
  /// Returns a new [TimeEntriesActivityLinks] instance.
  TimeEntriesActivityLinks({
    this.self,
    this.projects = const [],
  });

  Link self;

  List<Link> projects;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TimeEntriesActivityLinks &&
     other.self == self &&
     other.projects == projects;

  @override
  int get hashCode =>
    (self == null ? 0 : self.hashCode) +
    (projects == null ? 0 : projects.hashCode);

  @override
  String toString() => 'TimeEntriesActivityLinks[self=$self, projects=$projects]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (self != null) {
      json[r'self'] = self;
    }
    if (projects != null) {
      json[r'projects'] = projects;
    }
    return json;
  }

  /// Returns a new [TimeEntriesActivityLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static TimeEntriesActivityLinks fromJson(Map<String, dynamic> json) => json == null
    ? null
    : TimeEntriesActivityLinks(
        self: Link.fromJson(json[r'self']),
        projects: Link.listFromJson(json[r'projects']),
    );

  static List<TimeEntriesActivityLinks> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <TimeEntriesActivityLinks>[]
      : json.map((v) => TimeEntriesActivityLinks.fromJson(v)).toList(growable: true == growable);

  static Map<String, TimeEntriesActivityLinks> mapFromJson(Map<String, dynamic> json) {
    final map = <String, TimeEntriesActivityLinks>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = TimeEntriesActivityLinks.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of TimeEntriesActivityLinks-objects as value to a dart map
  static Map<String, List<TimeEntriesActivityLinks>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<TimeEntriesActivityLinks>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = TimeEntriesActivityLinks.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

