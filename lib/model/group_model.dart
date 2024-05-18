//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class GroupModel {
  /// Returns a new [GroupModel] instance.
  GroupModel({
    required this.type,
    required this.id,
    required this.name,
    this.createdAt,
    this.updatedAt,
    required this.links,
    required this.embedded,
  });

  GroupModelTypeEnum type;

  /// The principal's unique identifier.
  ///
  /// Minimum value: 1
  int id;

  /// The principal's display name, layout depends on instance settings.
  String name;

  /// Time of creation
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  /// Time of the most recent change to the principal
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  GroupModelAllOfLinks links;

  GroupModelAllOfEmbedded embedded;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GroupModel &&
    other.type == type &&
    other.id == id &&
    other.name == name &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt &&
    other.links == links &&
    other.embedded == embedded;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (id.hashCode) +
    (name.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (links.hashCode) +
    (embedded.hashCode);

  @override
  String toString() => 'GroupModel[type=$type, id=$id, name=$name, createdAt=$createdAt, updatedAt=$updatedAt, links=$links, embedded=$embedded]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'_type'] = this.type;
      json[r'id'] = this.id;
      json[r'name'] = this.name;
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
      json[r'_links'] = this.links;
      json[r'_embedded'] = this.embedded;
    return json;
  }

  /// Returns a new [GroupModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GroupModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GroupModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GroupModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GroupModel(
        type: GroupModelTypeEnum.fromJson(json[r'_type'])!,
        id: mapValueOfType<int>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        createdAt: mapDateTime(json, r'createdAt', r''),
        updatedAt: mapDateTime(json, r'updatedAt', r''),
        links: GroupModelAllOfLinks.fromJson(json[r'_links'])!,
        embedded: GroupModelAllOfEmbedded.fromJson(json[r'_embedded'])!,
      );
    }
    return null;
  }

  static List<GroupModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GroupModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GroupModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GroupModel> mapFromJson(dynamic json) {
    final map = <String, GroupModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GroupModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GroupModel-objects as value to a dart map
  static Map<String, List<GroupModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GroupModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GroupModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    '_type',
    'id',
    'name',
    '_links',
    '_embedded',
  };
}


class GroupModelTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const GroupModelTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const group = GroupModelTypeEnum._(r'Group');

  /// List of all possible values in this [enum][GroupModelTypeEnum].
  static const values = <GroupModelTypeEnum>[
    group,
  ];

  static GroupModelTypeEnum? fromJson(dynamic value) => GroupModelTypeEnumTypeTransformer().decode(value);

  static List<GroupModelTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GroupModelTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GroupModelTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [GroupModelTypeEnum] to String,
/// and [decode] dynamic data back to [GroupModelTypeEnum].
class GroupModelTypeEnumTypeTransformer {
  factory GroupModelTypeEnumTypeTransformer() => _instance ??= const GroupModelTypeEnumTypeTransformer._();

  const GroupModelTypeEnumTypeTransformer._();

  String encode(GroupModelTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a GroupModelTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  GroupModelTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Group': return GroupModelTypeEnum.group;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [GroupModelTypeEnumTypeTransformer] instance.
  static GroupModelTypeEnumTypeTransformer? _instance;
}


