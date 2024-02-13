//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class FileLinkReadModel {
  /// Returns a new [FileLinkReadModel] instance.
  FileLinkReadModel({
    required this.id,
    required this.type,
    this.createdAt,
    this.updatedAt,
    required this.originData,
    this.embedded,
    required this.links,
  });

  /// File link id
  int id;

  FileLinkReadModelTypeEnum type;

  /// Time of creation
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  /// Time of the most recent change to the file link
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  FileLinkOriginDataModel originData;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  FileLinkReadModelEmbedded? embedded;

  FileLinkReadModelLinks links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FileLinkReadModel &&
    other.id == id &&
    other.type == type &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt &&
    other.originData == originData &&
    other.embedded == embedded &&
    other.links == links;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (type.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (originData.hashCode) +
    (embedded == null ? 0 : embedded!.hashCode) +
    (links.hashCode);

  @override
  String toString() => 'FileLinkReadModel[id=$id, type=$type, createdAt=$createdAt, updatedAt=$updatedAt, originData=$originData, embedded=$embedded, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'_type'] = this.type;
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
      json[r'originData'] = this.originData;
    if (this.embedded != null) {
      json[r'_embedded'] = this.embedded;
    } else {
      json[r'_embedded'] = null;
    }
      json[r'_links'] = this.links;
    return json;
  }

  /// Returns a new [FileLinkReadModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FileLinkReadModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FileLinkReadModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FileLinkReadModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FileLinkReadModel(
        id: mapValueOfType<int>(json, r'id')!,
        type: FileLinkReadModelTypeEnum.fromJson(json[r'_type'])!,
        createdAt: mapDateTime(json, r'createdAt', r''),
        updatedAt: mapDateTime(json, r'updatedAt', r''),
        originData: FileLinkOriginDataModel.fromJson(json[r'originData'])!,
        embedded: FileLinkReadModelEmbedded.fromJson(json[r'_embedded']),
        links: FileLinkReadModelLinks.fromJson(json[r'_links'])!,
      );
    }
    return null;
  }

  static List<FileLinkReadModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FileLinkReadModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FileLinkReadModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FileLinkReadModel> mapFromJson(dynamic json) {
    final map = <String, FileLinkReadModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FileLinkReadModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FileLinkReadModel-objects as value to a dart map
  static Map<String, List<FileLinkReadModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FileLinkReadModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FileLinkReadModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    '_type',
    'originData',
    '_links',
  };
}


class FileLinkReadModelTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const FileLinkReadModelTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const fileLink = FileLinkReadModelTypeEnum._(r'FileLink');

  /// List of all possible values in this [enum][FileLinkReadModelTypeEnum].
  static const values = <FileLinkReadModelTypeEnum>[
    fileLink,
  ];

  static FileLinkReadModelTypeEnum? fromJson(dynamic value) => FileLinkReadModelTypeEnumTypeTransformer().decode(value);

  static List<FileLinkReadModelTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FileLinkReadModelTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FileLinkReadModelTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [FileLinkReadModelTypeEnum] to String,
/// and [decode] dynamic data back to [FileLinkReadModelTypeEnum].
class FileLinkReadModelTypeEnumTypeTransformer {
  factory FileLinkReadModelTypeEnumTypeTransformer() => _instance ??= const FileLinkReadModelTypeEnumTypeTransformer._();

  const FileLinkReadModelTypeEnumTypeTransformer._();

  String encode(FileLinkReadModelTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a FileLinkReadModelTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  FileLinkReadModelTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'FileLink': return FileLinkReadModelTypeEnum.fileLink;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [FileLinkReadModelTypeEnumTypeTransformer] instance.
  static FileLinkReadModelTypeEnumTypeTransformer? _instance;
}


