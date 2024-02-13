//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class RoleModel {
  /// Returns a new [RoleModel] instance.
  RoleModel({
    this.type,
    this.id,
    required this.name,
    this.links,
  });

  RoleModelTypeEnum? type;

  /// Role id
  ///
  /// Minimum value: 1
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  /// Role name
  String name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RoleModelLinks? links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RoleModel &&
    other.type == type &&
    other.id == id &&
    other.name == name &&
    other.links == links;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type == null ? 0 : type!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (name.hashCode) +
    (links == null ? 0 : links!.hashCode);

  @override
  String toString() => 'RoleModel[type=$type, id=$id, name=$name, links=$links]';

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
      json[r'name'] = this.name;
    if (this.links != null) {
      json[r'_links'] = this.links;
    } else {
      json[r'_links'] = null;
    }
    return json;
  }

  /// Returns a new [RoleModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RoleModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RoleModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RoleModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RoleModel(
        type: RoleModelTypeEnum.fromJson(json[r'_type']),
        id: mapValueOfType<int>(json, r'id'),
        name: mapValueOfType<String>(json, r'name')!,
        links: RoleModelLinks.fromJson(json[r'_links']),
      );
    }
    return null;
  }

  static List<RoleModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RoleModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RoleModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RoleModel> mapFromJson(dynamic json) {
    final map = <String, RoleModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RoleModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RoleModel-objects as value to a dart map
  static Map<String, List<RoleModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RoleModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RoleModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
  };
}


class RoleModelTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const RoleModelTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const role = RoleModelTypeEnum._(r'Role');

  /// List of all possible values in this [enum][RoleModelTypeEnum].
  static const values = <RoleModelTypeEnum>[
    role,
  ];

  static RoleModelTypeEnum? fromJson(dynamic value) => RoleModelTypeEnumTypeTransformer().decode(value);

  static List<RoleModelTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RoleModelTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RoleModelTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [RoleModelTypeEnum] to String,
/// and [decode] dynamic data back to [RoleModelTypeEnum].
class RoleModelTypeEnumTypeTransformer {
  factory RoleModelTypeEnumTypeTransformer() => _instance ??= const RoleModelTypeEnumTypeTransformer._();

  const RoleModelTypeEnumTypeTransformer._();

  String encode(RoleModelTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a RoleModelTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  RoleModelTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Role': return RoleModelTypeEnum.role;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [RoleModelTypeEnumTypeTransformer] instance.
  static RoleModelTypeEnumTypeTransformer? _instance;
}


