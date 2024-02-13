//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class StorageFileUploadLinkModel {
  /// Returns a new [StorageFileUploadLinkModel] instance.
  StorageFileUploadLinkModel({
    required this.type,
    required this.links,
  });

  StorageFileUploadLinkModelTypeEnum type;

  StorageFileUploadLinkModelLinks links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StorageFileUploadLinkModel &&
    other.type == type &&
    other.links == links;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (links.hashCode);

  @override
  String toString() => 'StorageFileUploadLinkModel[type=$type, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'_type'] = this.type;
      json[r'_links'] = this.links;
    return json;
  }

  /// Returns a new [StorageFileUploadLinkModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StorageFileUploadLinkModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StorageFileUploadLinkModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StorageFileUploadLinkModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StorageFileUploadLinkModel(
        type: StorageFileUploadLinkModelTypeEnum.fromJson(json[r'_type'])!,
        links: StorageFileUploadLinkModelLinks.fromJson(json[r'_links'])!,
      );
    }
    return null;
  }

  static List<StorageFileUploadLinkModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StorageFileUploadLinkModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StorageFileUploadLinkModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StorageFileUploadLinkModel> mapFromJson(dynamic json) {
    final map = <String, StorageFileUploadLinkModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StorageFileUploadLinkModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StorageFileUploadLinkModel-objects as value to a dart map
  static Map<String, List<StorageFileUploadLinkModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StorageFileUploadLinkModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StorageFileUploadLinkModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    '_type',
    '_links',
  };
}


class StorageFileUploadLinkModelTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const StorageFileUploadLinkModelTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const uploadLink = StorageFileUploadLinkModelTypeEnum._(r'UploadLink');

  /// List of all possible values in this [enum][StorageFileUploadLinkModelTypeEnum].
  static const values = <StorageFileUploadLinkModelTypeEnum>[
    uploadLink,
  ];

  static StorageFileUploadLinkModelTypeEnum? fromJson(dynamic value) => StorageFileUploadLinkModelTypeEnumTypeTransformer().decode(value);

  static List<StorageFileUploadLinkModelTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StorageFileUploadLinkModelTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StorageFileUploadLinkModelTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [StorageFileUploadLinkModelTypeEnum] to String,
/// and [decode] dynamic data back to [StorageFileUploadLinkModelTypeEnum].
class StorageFileUploadLinkModelTypeEnumTypeTransformer {
  factory StorageFileUploadLinkModelTypeEnumTypeTransformer() => _instance ??= const StorageFileUploadLinkModelTypeEnumTypeTransformer._();

  const StorageFileUploadLinkModelTypeEnumTypeTransformer._();

  String encode(StorageFileUploadLinkModelTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a StorageFileUploadLinkModelTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  StorageFileUploadLinkModelTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'UploadLink': return StorageFileUploadLinkModelTypeEnum.uploadLink;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [StorageFileUploadLinkModelTypeEnumTypeTransformer] instance.
  static StorageFileUploadLinkModelTypeEnumTypeTransformer? _instance;
}


