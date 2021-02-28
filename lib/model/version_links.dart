//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class VersionLinks {
  /// Returns a new [VersionLinks] instance.
  VersionLinks({
    this.self,
    this.definingProject,
    this.availableInProjects,
  });

  Link self;

  Link definingProject;

  Link availableInProjects;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VersionLinks &&
     other.self == self &&
     other.definingProject == definingProject &&
     other.availableInProjects == availableInProjects;

  @override
  int get hashCode =>
    (self == null ? 0 : self.hashCode) +
    (definingProject == null ? 0 : definingProject.hashCode) +
    (availableInProjects == null ? 0 : availableInProjects.hashCode);

  @override
  String toString() => 'VersionLinks[self=$self, definingProject=$definingProject, availableInProjects=$availableInProjects]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (self != null) {
      json[r'self'] = self;
    }
    if (definingProject != null) {
      json[r'definingProject'] = definingProject;
    }
    if (availableInProjects != null) {
      json[r'availableInProjects'] = availableInProjects;
    }
    return json;
  }

  /// Returns a new [VersionLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static VersionLinks fromJson(Map<String, dynamic> json) => json == null
    ? null
    : VersionLinks(
        self: Link.fromJson(json[r'self']),
        definingProject: Link.fromJson(json[r'definingProject']),
        availableInProjects: Link.fromJson(json[r'availableInProjects']),
    );

  static List<VersionLinks> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <VersionLinks>[]
      : json.map((v) => VersionLinks.fromJson(v)).toList(growable: true == growable);

  static Map<String, VersionLinks> mapFromJson(Map<String, dynamic> json) {
    final map = <String, VersionLinks>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = VersionLinks.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of VersionLinks-objects as value to a dart map
  static Map<String, List<VersionLinks>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<VersionLinks>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = VersionLinks.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

