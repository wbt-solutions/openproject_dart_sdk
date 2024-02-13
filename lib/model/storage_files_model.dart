//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class StorageFilesModel {
  /// Returns a new [StorageFilesModel] instance.
  StorageFilesModel({
    required this.type,
    this.files = const [],
    required this.parent,
    this.ancestors = const [],
    required this.links,
  });

  StorageFilesModelTypeEnum type;

  /// List of files provided by the selected storage.
  List<StorageFileModel> files;

  StorageFilesModelParent parent;

  /// List of ancestors of the parent directory. Can be empty, if parent directory was root directory.
  List<StorageFileModel> ancestors;

  StorageFileModelAllOfLinks links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StorageFilesModel &&
    other.type == type &&
    _deepEquality.equals(other.files, files) &&
    other.parent == parent &&
    _deepEquality.equals(other.ancestors, ancestors) &&
    other.links == links;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (files.hashCode) +
    (parent.hashCode) +
    (ancestors.hashCode) +
    (links.hashCode);

  @override
  String toString() => 'StorageFilesModel[type=$type, files=$files, parent=$parent, ancestors=$ancestors, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'_type'] = this.type;
      json[r'files'] = this.files;
      json[r'parent'] = this.parent;
      json[r'ancestors'] = this.ancestors;
      json[r'_links'] = this.links;
    return json;
  }

  /// Returns a new [StorageFilesModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StorageFilesModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StorageFilesModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StorageFilesModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StorageFilesModel(
        type: StorageFilesModelTypeEnum.fromJson(json[r'_type'])!,
        files: StorageFileModel.listFromJson(json[r'files']),
        parent: StorageFilesModelParent.fromJson(json[r'parent'])!,
        ancestors: StorageFileModel.listFromJson(json[r'ancestors']),
        links: StorageFileModelAllOfLinks.fromJson(json[r'_links'])!,
      );
    }
    return null;
  }

  static List<StorageFilesModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StorageFilesModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StorageFilesModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StorageFilesModel> mapFromJson(dynamic json) {
    final map = <String, StorageFilesModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StorageFilesModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StorageFilesModel-objects as value to a dart map
  static Map<String, List<StorageFilesModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StorageFilesModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StorageFilesModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    '_type',
    'files',
    'parent',
    'ancestors',
    '_links',
  };
}


class StorageFilesModelTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const StorageFilesModelTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const storageFiles = StorageFilesModelTypeEnum._(r'StorageFiles');

  /// List of all possible values in this [enum][StorageFilesModelTypeEnum].
  static const values = <StorageFilesModelTypeEnum>[
    storageFiles,
  ];

  static StorageFilesModelTypeEnum? fromJson(dynamic value) => StorageFilesModelTypeEnumTypeTransformer().decode(value);

  static List<StorageFilesModelTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StorageFilesModelTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StorageFilesModelTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [StorageFilesModelTypeEnum] to String,
/// and [decode] dynamic data back to [StorageFilesModelTypeEnum].
class StorageFilesModelTypeEnumTypeTransformer {
  factory StorageFilesModelTypeEnumTypeTransformer() => _instance ??= const StorageFilesModelTypeEnumTypeTransformer._();

  const StorageFilesModelTypeEnumTypeTransformer._();

  String encode(StorageFilesModelTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a StorageFilesModelTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  StorageFilesModelTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'StorageFiles': return StorageFilesModelTypeEnum.storageFiles;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [StorageFilesModelTypeEnumTypeTransformer] instance.
  static StorageFilesModelTypeEnumTypeTransformer? _instance;
}


