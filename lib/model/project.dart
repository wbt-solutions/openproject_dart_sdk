//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class Project {
  /// Returns a new [Project] instance.
  Project({
    this.id,
    this.name,
    this.identifier,
    this.active,
    this.status,
    this.statusExplanation,
    this.public,
    this.description,
    this.createdAt,
    this.updatedAt,
    this.links,
  });

  int id;

  String name;

  String identifier;

  bool active;

  ProjectStatusEnum status;

  Description statusExplanation;

  bool public;

  Description description;

  DateTime createdAt;

  DateTime updatedAt;

  ProjectLinks links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Project &&
     other.id == id &&
     other.name == name &&
     other.identifier == identifier &&
     other.active == active &&
     other.status == status &&
     other.statusExplanation == statusExplanation &&
     other.public == public &&
     other.description == description &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt &&
     other.links == links;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (identifier == null ? 0 : identifier.hashCode) +
    (active == null ? 0 : active.hashCode) +
    (status == null ? 0 : status.hashCode) +
    (statusExplanation == null ? 0 : statusExplanation.hashCode) +
    (public == null ? 0 : public.hashCode) +
    (description == null ? 0 : description.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (updatedAt == null ? 0 : updatedAt.hashCode) +
    (links == null ? 0 : links.hashCode);

  @override
  String toString() => 'Project[id=$id, name=$name, identifier=$identifier, active=$active, status=$status, statusExplanation=$statusExplanation, public=$public, description=$description, createdAt=$createdAt, updatedAt=$updatedAt, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (identifier != null) {
      json[r'identifier'] = identifier;
    }
    if (active != null) {
      json[r'active'] = active;
    }
    if (status != null) {
      json[r'status'] = status;
    }
    if (statusExplanation != null) {
      json[r'statusExplanation'] = statusExplanation;
    }
    if (public != null) {
      json[r'public'] = public;
    }
    if (description != null) {
      json[r'description'] = description;
    }
    if (createdAt != null) {
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
    }
    if (updatedAt != null) {
      json[r'updatedAt'] = updatedAt.toUtc().toIso8601String();
    }
    if (links != null) {
      json[r'_links'] = links;
    }
    return json;
  }

  /// Returns a new [Project] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Project fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Project(
        id: json[r'id'],
        name: json[r'name'],
        identifier: json[r'identifier'],
        active: json[r'active'],
        status: ProjectStatusEnum.fromJson(json[r'status']),
        statusExplanation: Description.fromJson(json[r'statusExplanation']),
        public: json[r'public'],
        description: Description.fromJson(json[r'description']),
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        updatedAt: json[r'updatedAt'] == null
          ? null
          : DateTime.parse(json[r'updatedAt']),
        links: ProjectLinks.fromJson(json[r'_links']),
    );

  static List<Project> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Project>[]
      : json.map((v) => Project.fromJson(v)).toList(growable: true == growable);

  static Map<String, Project> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Project>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = Project.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of Project-objects as value to a dart map
  static Map<String, List<Project>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Project>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = Project.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}


class ProjectStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const ProjectStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const onTrack = ProjectStatusEnum._(r'on track');
  static const atRisk = ProjectStatusEnum._(r'at risk');
  static const offTrack = ProjectStatusEnum._(r'off track');

  /// List of all possible values in this [enum][ProjectStatusEnum].
  static const values = <ProjectStatusEnum>[
    onTrack,
    atRisk,
    offTrack,
  ];

  static ProjectStatusEnum fromJson(dynamic value) =>
    ProjectStatusEnumTypeTransformer().decode(value);

  static List<ProjectStatusEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ProjectStatusEnum>[]
      : json
          .map((value) => ProjectStatusEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [ProjectStatusEnum] to String,
/// and [decode] dynamic data back to [ProjectStatusEnum].
class ProjectStatusEnumTypeTransformer {
  const ProjectStatusEnumTypeTransformer._();

  factory ProjectStatusEnumTypeTransformer() => _instance ??= ProjectStatusEnumTypeTransformer._();

  String encode(ProjectStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ProjectStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ProjectStatusEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'on track': return ProjectStatusEnum.onTrack;
      case r'at risk': return ProjectStatusEnum.atRisk;
      case r'off track': return ProjectStatusEnum.offTrack;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [ProjectStatusEnumTypeTransformer] instance.
  static ProjectStatusEnumTypeTransformer _instance;
}

