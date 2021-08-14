//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class WorkPackageEmbedded {
  /// Returns a new [WorkPackageEmbedded] instance.
  WorkPackageEmbedded({
    this.parent,
    this.project,
    this.type,
    this.version,
  });

  WorkPackage parent;

  Project project;

  WPType type;

  Version version;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WorkPackageEmbedded &&
     other.parent == parent &&
     other.project == project &&
     other.type == type &&
     other.version == version;

  @override
  int get hashCode =>
    (parent == null ? 0 : parent.hashCode) +
    (project == null ? 0 : project.hashCode) +
    (type == null ? 0 : type.hashCode) +
    (version == null ? 0 : version.hashCode);

  @override
  String toString() => 'WorkPackageEmbedded[parent=$parent, project=$project, type=$type, version=$version]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (parent != null) {
      json[r'parent'] = parent;
    }
    if (project != null) {
      json[r'project'] = project;
    }
    if (type != null) {
      json[r'type'] = type;
    }
    if (version != null) {
      json[r'version'] = version;
    }
    return json;
  }

  /// Returns a new [WorkPackageEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WorkPackageEmbedded fromJson(Map<String, dynamic> json) => json == null
    ? null
    : WorkPackageEmbedded(
        parent: WorkPackage.fromJson(json[r'parent']),
        project: Project.fromJson(json[r'project']),
        type: WPType.fromJson(json[r'type']),
        version: Version.fromJson(json[r'version']),
    );

  static List<WorkPackageEmbedded> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WorkPackageEmbedded>[]
      : json.map((dynamic value) => WorkPackageEmbedded.fromJson(value)).toList(growable: true == growable);

  static Map<String, WorkPackageEmbedded> mapFromJson(Map<String, dynamic> json) {
    final map = <String, WorkPackageEmbedded>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = WorkPackageEmbedded.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of WorkPackageEmbedded-objects as value to a dart map
  static Map<String, List<WorkPackageEmbedded>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<WorkPackageEmbedded>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = WorkPackageEmbedded.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

