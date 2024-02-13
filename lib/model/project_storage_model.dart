//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class ProjectStorageModel {
  /// Returns a new [ProjectStorageModel] instance.
  ProjectStorageModel({
    required this.type,
    required this.id,
    required this.projectFolderMode,
    required this.createdAt,
    required this.updatedAt,
    this.links,
  });

  ProjectStorageModelTypeEnum type;

  /// The project storage's id
  ///
  /// Minimum value: 1
  int id;

  ProjectStorageModelProjectFolderModeEnum projectFolderMode;

  /// Time of creation
  DateTime createdAt;

  /// Time of the most recent change to the project storage
  DateTime updatedAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ProjectStorageModelLinks? links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProjectStorageModel &&
    other.type == type &&
    other.id == id &&
    other.projectFolderMode == projectFolderMode &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt &&
    other.links == links;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (id.hashCode) +
    (projectFolderMode.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode) +
    (links == null ? 0 : links!.hashCode);

  @override
  String toString() => 'ProjectStorageModel[type=$type, id=$id, projectFolderMode=$projectFolderMode, createdAt=$createdAt, updatedAt=$updatedAt, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'_type'] = this.type;
      json[r'id'] = this.id;
      json[r'projectFolderMode'] = this.projectFolderMode;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
      json[r'updatedAt'] = this.updatedAt.toUtc().toIso8601String();
    if (this.links != null) {
      json[r'_links'] = this.links;
    } else {
      json[r'_links'] = null;
    }
    return json;
  }

  /// Returns a new [ProjectStorageModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProjectStorageModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProjectStorageModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProjectStorageModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProjectStorageModel(
        type: ProjectStorageModelTypeEnum.fromJson(json[r'_type'])!,
        id: mapValueOfType<int>(json, r'id')!,
        projectFolderMode: ProjectStorageModelProjectFolderModeEnum.fromJson(json[r'projectFolderMode'])!,
        createdAt: mapDateTime(json, r'createdAt', r'')!,
        updatedAt: mapDateTime(json, r'updatedAt', r'')!,
        links: ProjectStorageModelLinks.fromJson(json[r'_links']),
      );
    }
    return null;
  }

  static List<ProjectStorageModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProjectStorageModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectStorageModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProjectStorageModel> mapFromJson(dynamic json) {
    final map = <String, ProjectStorageModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProjectStorageModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProjectStorageModel-objects as value to a dart map
  static Map<String, List<ProjectStorageModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProjectStorageModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProjectStorageModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    '_type',
    'id',
    'projectFolderMode',
    'createdAt',
    'updatedAt',
  };
}


class ProjectStorageModelTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const ProjectStorageModelTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const projectStorage = ProjectStorageModelTypeEnum._(r'ProjectStorage');

  /// List of all possible values in this [enum][ProjectStorageModelTypeEnum].
  static const values = <ProjectStorageModelTypeEnum>[
    projectStorage,
  ];

  static ProjectStorageModelTypeEnum? fromJson(dynamic value) => ProjectStorageModelTypeEnumTypeTransformer().decode(value);

  static List<ProjectStorageModelTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProjectStorageModelTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectStorageModelTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ProjectStorageModelTypeEnum] to String,
/// and [decode] dynamic data back to [ProjectStorageModelTypeEnum].
class ProjectStorageModelTypeEnumTypeTransformer {
  factory ProjectStorageModelTypeEnumTypeTransformer() => _instance ??= const ProjectStorageModelTypeEnumTypeTransformer._();

  const ProjectStorageModelTypeEnumTypeTransformer._();

  String encode(ProjectStorageModelTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ProjectStorageModelTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ProjectStorageModelTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'ProjectStorage': return ProjectStorageModelTypeEnum.projectStorage;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ProjectStorageModelTypeEnumTypeTransformer] instance.
  static ProjectStorageModelTypeEnumTypeTransformer? _instance;
}



class ProjectStorageModelProjectFolderModeEnum {
  /// Instantiate a new enum with the provided [value].
  const ProjectStorageModelProjectFolderModeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const inactive = ProjectStorageModelProjectFolderModeEnum._(r'inactive');
  static const manual = ProjectStorageModelProjectFolderModeEnum._(r'manual');

  /// List of all possible values in this [enum][ProjectStorageModelProjectFolderModeEnum].
  static const values = <ProjectStorageModelProjectFolderModeEnum>[
    inactive,
    manual,
  ];

  static ProjectStorageModelProjectFolderModeEnum? fromJson(dynamic value) => ProjectStorageModelProjectFolderModeEnumTypeTransformer().decode(value);

  static List<ProjectStorageModelProjectFolderModeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProjectStorageModelProjectFolderModeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectStorageModelProjectFolderModeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ProjectStorageModelProjectFolderModeEnum] to String,
/// and [decode] dynamic data back to [ProjectStorageModelProjectFolderModeEnum].
class ProjectStorageModelProjectFolderModeEnumTypeTransformer {
  factory ProjectStorageModelProjectFolderModeEnumTypeTransformer() => _instance ??= const ProjectStorageModelProjectFolderModeEnumTypeTransformer._();

  const ProjectStorageModelProjectFolderModeEnumTypeTransformer._();

  String encode(ProjectStorageModelProjectFolderModeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ProjectStorageModelProjectFolderModeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ProjectStorageModelProjectFolderModeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'inactive': return ProjectStorageModelProjectFolderModeEnum.inactive;
        case r'manual': return ProjectStorageModelProjectFolderModeEnum.manual;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ProjectStorageModelProjectFolderModeEnumTypeTransformer] instance.
  static ProjectStorageModelProjectFolderModeEnumTypeTransformer? _instance;
}


