//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class MembershipSchemaModel {
  /// Returns a new [MembershipSchemaModel] instance.
  MembershipSchemaModel({
    required this.type,
    this.dependencies = const [],
    required this.links,
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.notificationMessage,
    required this.project,
    required this.principal,
    required this.roles,
  });

  MembershipSchemaModelTypeEnum type;

  /// A list of dependencies between one property's value and another property
  List<String> dependencies;

  SchemaModelLinks links;

  SchemaPropertyModel id;

  SchemaPropertyModel createdAt;

  SchemaPropertyModel updatedAt;

  SchemaPropertyModel notificationMessage;

  SchemaPropertyModel project;

  SchemaPropertyModel principal;

  SchemaPropertyModel roles;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MembershipSchemaModel &&
    other.type == type &&
    _deepEquality.equals(other.dependencies, dependencies) &&
    other.links == links &&
    other.id == id &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt &&
    other.notificationMessage == notificationMessage &&
    other.project == project &&
    other.principal == principal &&
    other.roles == roles;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (dependencies.hashCode) +
    (links.hashCode) +
    (id.hashCode) +
    (createdAt.hashCode) +
    (updatedAt.hashCode) +
    (notificationMessage.hashCode) +
    (project.hashCode) +
    (principal.hashCode) +
    (roles.hashCode);

  @override
  String toString() => 'MembershipSchemaModel[type=$type, dependencies=$dependencies, links=$links, id=$id, createdAt=$createdAt, updatedAt=$updatedAt, notificationMessage=$notificationMessage, project=$project, principal=$principal, roles=$roles]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'_type'] = this.type;
      json[r'_dependencies'] = this.dependencies;
      json[r'_links'] = this.links;
      json[r'id'] = this.id;
      json[r'createdAt'] = this.createdAt;
      json[r'updatedAt'] = this.updatedAt;
      json[r'notificationMessage'] = this.notificationMessage;
      json[r'project'] = this.project;
      json[r'principal'] = this.principal;
      json[r'roles'] = this.roles;
    return json;
  }

  /// Returns a new [MembershipSchemaModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MembershipSchemaModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MembershipSchemaModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MembershipSchemaModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MembershipSchemaModel(
        type: MembershipSchemaModelTypeEnum.fromJson(json[r'_type'])!,
        dependencies: json[r'_dependencies'] is Iterable
            ? (json[r'_dependencies'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        links: SchemaModelLinks.fromJson(json[r'_links'])!,
        id: SchemaPropertyModel.fromJson(json[r'id'])!,
        createdAt: SchemaPropertyModel.fromJson(json[r'createdAt'])!,
        updatedAt: SchemaPropertyModel.fromJson(json[r'updatedAt'])!,
        notificationMessage: SchemaPropertyModel.fromJson(json[r'notificationMessage'])!,
        project: SchemaPropertyModel.fromJson(json[r'project'])!,
        principal: SchemaPropertyModel.fromJson(json[r'principal'])!,
        roles: SchemaPropertyModel.fromJson(json[r'roles'])!,
      );
    }
    return null;
  }

  static List<MembershipSchemaModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MembershipSchemaModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MembershipSchemaModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MembershipSchemaModel> mapFromJson(dynamic json) {
    final map = <String, MembershipSchemaModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MembershipSchemaModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MembershipSchemaModel-objects as value to a dart map
  static Map<String, List<MembershipSchemaModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MembershipSchemaModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MembershipSchemaModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    '_type',
    '_links',
    'id',
    'createdAt',
    'updatedAt',
    'notificationMessage',
    'project',
    'principal',
    'roles',
  };
}


class MembershipSchemaModelTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const MembershipSchemaModelTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const schema = MembershipSchemaModelTypeEnum._(r'Schema');

  /// List of all possible values in this [enum][MembershipSchemaModelTypeEnum].
  static const values = <MembershipSchemaModelTypeEnum>[
    schema,
  ];

  static MembershipSchemaModelTypeEnum? fromJson(dynamic value) => MembershipSchemaModelTypeEnumTypeTransformer().decode(value);

  static List<MembershipSchemaModelTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MembershipSchemaModelTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MembershipSchemaModelTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [MembershipSchemaModelTypeEnum] to String,
/// and [decode] dynamic data back to [MembershipSchemaModelTypeEnum].
class MembershipSchemaModelTypeEnumTypeTransformer {
  factory MembershipSchemaModelTypeEnumTypeTransformer() => _instance ??= const MembershipSchemaModelTypeEnumTypeTransformer._();

  const MembershipSchemaModelTypeEnumTypeTransformer._();

  String encode(MembershipSchemaModelTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a MembershipSchemaModelTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  MembershipSchemaModelTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Schema': return MembershipSchemaModelTypeEnum.schema;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [MembershipSchemaModelTypeEnumTypeTransformer] instance.
  static MembershipSchemaModelTypeEnumTypeTransformer? _instance;
}


