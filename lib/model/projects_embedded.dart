//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class ProjectsEmbedded {
  /// Returns a new [ProjectsEmbedded] instance.
  ProjectsEmbedded({
    this.elements = const [],
  });

  List<Project> elements;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProjectsEmbedded &&
     other.elements == elements;

  @override
  int get hashCode =>
    (elements == null ? 0 : elements.hashCode);

  @override
  String toString() => 'ProjectsEmbedded[elements=$elements]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (elements != null) {
      json[r'elements'] = elements;
    }
    return json;
  }

  /// Returns a new [ProjectsEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ProjectsEmbedded fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ProjectsEmbedded(
        elements: Project.listFromJson(json[r'elements']),
    );

  static List<ProjectsEmbedded> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ProjectsEmbedded>[]
      : json.map((dynamic value) => ProjectsEmbedded.fromJson(value)).toList(growable: true == growable);

  static Map<String, ProjectsEmbedded> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ProjectsEmbedded>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = ProjectsEmbedded.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ProjectsEmbedded-objects as value to a dart map
  static Map<String, List<ProjectsEmbedded>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ProjectsEmbedded>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = ProjectsEmbedded.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

