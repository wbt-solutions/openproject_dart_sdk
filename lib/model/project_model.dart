//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class ProjectModel {
  /// Returns a new [ProjectModel] instance.
  ProjectModel({
    this.type,
    this.id,
    this.identifier,
    this.name,
    this.active,
    this.statusExplanation,
    this.public,
    this.description,
    this.createdAt,
    this.updatedAt,
    this.links,
  });

  ProjectModelTypeEnum? type;

  /// Projects' id
  ///
  /// Minimum value: 1
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? identifier;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Indicates whether the project is currently active or already archived
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? active;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ProjectModelStatusExplanation? statusExplanation;

  /// Indicates whether the project is accessible for everybody
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? public;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Formattable? description;

  /// Time of creation
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  /// Time of the most recent change to the project
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ProjectModelLinks? links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProjectModel &&
    other.type == type &&
    other.id == id &&
    other.identifier == identifier &&
    other.name == name &&
    other.active == active &&
    other.statusExplanation == statusExplanation &&
    other.public == public &&
    other.description == description &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt &&
    other.links == links;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type == null ? 0 : type!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (identifier == null ? 0 : identifier!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (active == null ? 0 : active!.hashCode) +
    (statusExplanation == null ? 0 : statusExplanation!.hashCode) +
    (public == null ? 0 : public!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (links == null ? 0 : links!.hashCode);

  @override
  String toString() => 'ProjectModel[type=$type, id=$id, identifier=$identifier, name=$name, active=$active, statusExplanation=$statusExplanation, public=$public, description=$description, createdAt=$createdAt, updatedAt=$updatedAt, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.type != null) {
      json[r'_type'] = this.type;
    } else {
      json[r'_type'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.identifier != null) {
      json[r'identifier'] = this.identifier;
    } else {
      json[r'identifier'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.active != null) {
      json[r'active'] = this.active;
    } else {
      json[r'active'] = null;
    }
    if (this.statusExplanation != null) {
      json[r'statusExplanation'] = this.statusExplanation;
    } else {
      json[r'statusExplanation'] = null;
    }
    if (this.public != null) {
      json[r'public'] = this.public;
    } else {
      json[r'public'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'createdAt'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt!.toUtc().toIso8601String();
    } else {
      json[r'updatedAt'] = null;
    }
    if (this.links != null) {
      json[r'_links'] = this.links;
    } else {
      json[r'_links'] = null;
    }
    return json;
  }

  /// Returns a new [ProjectModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProjectModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProjectModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProjectModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProjectModel(
        type: ProjectModelTypeEnum.fromJson(json[r'_type']),
        id: mapValueOfType<int>(json, r'id'),
        identifier: mapValueOfType<String>(json, r'identifier'),
        name: mapValueOfType<String>(json, r'name'),
        active: mapValueOfType<bool>(json, r'active'),
        statusExplanation: ProjectModelStatusExplanation.fromJson(json[r'statusExplanation']),
        public: mapValueOfType<bool>(json, r'public'),
        description: Formattable.fromJson(json[r'description']),
        createdAt: mapDateTime(json, r'createdAt', r''),
        updatedAt: mapDateTime(json, r'updatedAt', r''),
        links: ProjectModelLinks.fromJson(json[r'_links']),
      );
    }
    return null;
  }

  static List<ProjectModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProjectModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProjectModel> mapFromJson(dynamic json) {
    final map = <String, ProjectModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProjectModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProjectModel-objects as value to a dart map
  static Map<String, List<ProjectModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProjectModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProjectModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class ProjectModelTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const ProjectModelTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const project = ProjectModelTypeEnum._(r'Project');

  /// List of all possible values in this [enum][ProjectModelTypeEnum].
  static const values = <ProjectModelTypeEnum>[
    project,
  ];

  static ProjectModelTypeEnum? fromJson(dynamic value) => ProjectModelTypeEnumTypeTransformer().decode(value);

  static List<ProjectModelTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProjectModelTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectModelTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ProjectModelTypeEnum] to String,
/// and [decode] dynamic data back to [ProjectModelTypeEnum].
class ProjectModelTypeEnumTypeTransformer {
  factory ProjectModelTypeEnumTypeTransformer() => _instance ??= const ProjectModelTypeEnumTypeTransformer._();

  const ProjectModelTypeEnumTypeTransformer._();

  String encode(ProjectModelTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ProjectModelTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ProjectModelTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Project': return ProjectModelTypeEnum.project;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ProjectModelTypeEnumTypeTransformer] instance.
  static ProjectModelTypeEnumTypeTransformer? _instance;
}


