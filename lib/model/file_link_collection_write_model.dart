//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class FileLinkCollectionWriteModel {
  /// Returns a new [FileLinkCollectionWriteModel] instance.
  FileLinkCollectionWriteModel({
    required this.type,
    required this.total,
    required this.count,
    required this.links,
    required this.embedded,
  });

  FileLinkCollectionWriteModelTypeEnum type;

  /// The total amount of elements available in the collection.
  ///
  /// Minimum value: 0
  int total;

  /// Actual amount of elements in this response.
  ///
  /// Minimum value: 0
  int count;

  CollectionModelLinks links;

  FileLinkCollectionWriteModelAllOfEmbedded embedded;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FileLinkCollectionWriteModel &&
    other.type == type &&
    other.total == total &&
    other.count == count &&
    other.links == links &&
    other.embedded == embedded;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (total.hashCode) +
    (count.hashCode) +
    (links.hashCode) +
    (embedded.hashCode);

  @override
  String toString() => 'FileLinkCollectionWriteModel[type=$type, total=$total, count=$count, links=$links, embedded=$embedded]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'_type'] = this.type;
      json[r'total'] = this.total;
      json[r'count'] = this.count;
      json[r'_links'] = this.links;
      json[r'_embedded'] = this.embedded;
    return json;
  }

  /// Returns a new [FileLinkCollectionWriteModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FileLinkCollectionWriteModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FileLinkCollectionWriteModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FileLinkCollectionWriteModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FileLinkCollectionWriteModel(
        type: FileLinkCollectionWriteModelTypeEnum.fromJson(json[r'_type'])!,
        total: mapValueOfType<int>(json, r'total')!,
        count: mapValueOfType<int>(json, r'count')!,
        links: CollectionModelLinks.fromJson(json[r'_links'])!,
        embedded: FileLinkCollectionWriteModelAllOfEmbedded.fromJson(json[r'_embedded'])!,
      );
    }
    return null;
  }

  static List<FileLinkCollectionWriteModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FileLinkCollectionWriteModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FileLinkCollectionWriteModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FileLinkCollectionWriteModel> mapFromJson(dynamic json) {
    final map = <String, FileLinkCollectionWriteModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FileLinkCollectionWriteModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FileLinkCollectionWriteModel-objects as value to a dart map
  static Map<String, List<FileLinkCollectionWriteModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FileLinkCollectionWriteModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FileLinkCollectionWriteModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    '_type',
    'total',
    'count',
    '_links',
    '_embedded',
  };
}


class FileLinkCollectionWriteModelTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const FileLinkCollectionWriteModelTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const collection = FileLinkCollectionWriteModelTypeEnum._(r'Collection');

  /// List of all possible values in this [enum][FileLinkCollectionWriteModelTypeEnum].
  static const values = <FileLinkCollectionWriteModelTypeEnum>[
    collection,
  ];

  static FileLinkCollectionWriteModelTypeEnum? fromJson(dynamic value) => FileLinkCollectionWriteModelTypeEnumTypeTransformer().decode(value);

  static List<FileLinkCollectionWriteModelTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FileLinkCollectionWriteModelTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FileLinkCollectionWriteModelTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [FileLinkCollectionWriteModelTypeEnum] to String,
/// and [decode] dynamic data back to [FileLinkCollectionWriteModelTypeEnum].
class FileLinkCollectionWriteModelTypeEnumTypeTransformer {
  factory FileLinkCollectionWriteModelTypeEnumTypeTransformer() => _instance ??= const FileLinkCollectionWriteModelTypeEnumTypeTransformer._();

  const FileLinkCollectionWriteModelTypeEnumTypeTransformer._();

  String encode(FileLinkCollectionWriteModelTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a FileLinkCollectionWriteModelTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  FileLinkCollectionWriteModelTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Collection': return FileLinkCollectionWriteModelTypeEnum.collection;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [FileLinkCollectionWriteModelTypeEnumTypeTransformer] instance.
  static FileLinkCollectionWriteModelTypeEnumTypeTransformer? _instance;
}


