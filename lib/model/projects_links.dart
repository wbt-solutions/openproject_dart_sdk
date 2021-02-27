//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ProjectsLinks {
  /// Returns a new [ProjectsLinks] instance.
  ProjectsLinks({
    this.self,
  });

  Link self;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProjectsLinks &&
     other.self == self;

  @override
  int get hashCode =>
    (self == null ? 0 : self.hashCode);

  @override
  String toString() => 'ProjectsLinks[self=$self]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (self != null) {
      json[r'self'] = self;
    }
    return json;
  }

  /// Returns a new [ProjectsLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ProjectsLinks fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ProjectsLinks(
        self: Link.fromJson(json[r'self']),
    );

  static List<ProjectsLinks> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ProjectsLinks>[]
      : json.map((v) => ProjectsLinks.fromJson(v)).toList(growable: true == growable);

  static Map<String, ProjectsLinks> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ProjectsLinks>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ProjectsLinks.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ProjectsLinks-objects as value to a dart map
  static Map<String, List<ProjectsLinks>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ProjectsLinks>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ProjectsLinks.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

