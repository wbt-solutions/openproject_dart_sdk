//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class StorageReadModel {
  /// Returns a new [StorageReadModel] instance.
  StorageReadModel({
    required this.id,
    required this.type,
    required this.name,
    this.hasApplicationPassword,
    this.createdAt,
    this.updatedAt,
    this.embedded,
    required this.links,
  });

  /// Storage id
  int id;

  StorageReadModelTypeEnum type;

  /// Storage name
  String name;

  /// Whether the storage has the application password to use for the Nextcloud storage.  Ignored if the provider type is not Nextcloud
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hasApplicationPassword;

  /// Time of creation
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  /// Time of the most recent change to the storage
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
  StorageReadModelEmbedded? embedded;

  StorageReadModelLinks links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StorageReadModel &&
    other.id == id &&
    other.type == type &&
    other.name == name &&
    other.hasApplicationPassword == hasApplicationPassword &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt &&
    other.embedded == embedded &&
    other.links == links;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (type.hashCode) +
    (name.hashCode) +
    (hasApplicationPassword == null ? 0 : hasApplicationPassword!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (embedded == null ? 0 : embedded!.hashCode) +
    (links.hashCode);

  @override
  String toString() => 'StorageReadModel[id=$id, type=$type, name=$name, hasApplicationPassword=$hasApplicationPassword, createdAt=$createdAt, updatedAt=$updatedAt, embedded=$embedded, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'_type'] = this.type;
      json[r'name'] = this.name;
    if (this.hasApplicationPassword != null) {
      json[r'hasApplicationPassword'] = this.hasApplicationPassword;
    } else {
      json[r'hasApplicationPassword'] = null;
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
    if (this.embedded != null) {
      json[r'_embedded'] = this.embedded;
    } else {
      json[r'_embedded'] = null;
    }
      json[r'_links'] = this.links;
    return json;
  }

  /// Returns a new [StorageReadModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StorageReadModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StorageReadModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StorageReadModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StorageReadModel(
        id: mapValueOfType<int>(json, r'id')!,
        type: StorageReadModelTypeEnum.fromJson(json[r'_type'])!,
        name: mapValueOfType<String>(json, r'name')!,
        hasApplicationPassword: mapValueOfType<bool>(json, r'hasApplicationPassword'),
        createdAt: mapDateTime(json, r'createdAt', r''),
        updatedAt: mapDateTime(json, r'updatedAt', r''),
        embedded: StorageReadModelEmbedded.fromJson(json[r'_embedded']),
        links: StorageReadModelLinks.fromJson(json[r'_links'])!,
      );
    }
    return null;
  }

  static List<StorageReadModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StorageReadModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StorageReadModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StorageReadModel> mapFromJson(dynamic json) {
    final map = <String, StorageReadModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StorageReadModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StorageReadModel-objects as value to a dart map
  static Map<String, List<StorageReadModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StorageReadModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StorageReadModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    '_type',
    'name',
    '_links',
  };
}


class StorageReadModelTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const StorageReadModelTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const storage = StorageReadModelTypeEnum._(r'Storage');

  /// List of all possible values in this [enum][StorageReadModelTypeEnum].
  static const values = <StorageReadModelTypeEnum>[
    storage,
  ];

  static StorageReadModelTypeEnum? fromJson(dynamic value) => StorageReadModelTypeEnumTypeTransformer().decode(value);

  static List<StorageReadModelTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StorageReadModelTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StorageReadModelTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [StorageReadModelTypeEnum] to String,
/// and [decode] dynamic data back to [StorageReadModelTypeEnum].
class StorageReadModelTypeEnumTypeTransformer {
  factory StorageReadModelTypeEnumTypeTransformer() => _instance ??= const StorageReadModelTypeEnumTypeTransformer._();

  const StorageReadModelTypeEnumTypeTransformer._();

  String encode(StorageReadModelTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a StorageReadModelTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  StorageReadModelTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Storage': return StorageReadModelTypeEnum.storage;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [StorageReadModelTypeEnumTypeTransformer] instance.
  static StorageReadModelTypeEnumTypeTransformer? _instance;
}


