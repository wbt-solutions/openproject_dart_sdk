//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class PlaceholderUserCollectionModel {
  /// Returns a new [PlaceholderUserCollectionModel] instance.
  PlaceholderUserCollectionModel({
    required this.type,
    required this.total,
    required this.count,
    required this.links,
    required this.embedded,
  });

  PlaceholderUserCollectionModelTypeEnum type;

  /// The total amount of elements available in the collection.
  ///
  /// Minimum value: 0
  int total;

  /// Actual amount of elements in this response.
  ///
  /// Minimum value: 0
  int count;

  PlaceholderUserCollectionModelAllOfLinks links;

  PlaceholderUserCollectionModelAllOfEmbedded embedded;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PlaceholderUserCollectionModel &&
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
  String toString() => 'PlaceholderUserCollectionModel[type=$type, total=$total, count=$count, links=$links, embedded=$embedded]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'_type'] = this.type;
      json[r'total'] = this.total;
      json[r'count'] = this.count;
      json[r'_links'] = this.links;
      json[r'_embedded'] = this.embedded;
    return json;
  }

  /// Returns a new [PlaceholderUserCollectionModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PlaceholderUserCollectionModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PlaceholderUserCollectionModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PlaceholderUserCollectionModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PlaceholderUserCollectionModel(
        type: PlaceholderUserCollectionModelTypeEnum.fromJson(json[r'_type'])!,
        total: mapValueOfType<int>(json, r'total')!,
        count: mapValueOfType<int>(json, r'count')!,
        links: PlaceholderUserCollectionModelAllOfLinks.fromJson(json[r'_links'])!,
        embedded: PlaceholderUserCollectionModelAllOfEmbedded.fromJson(json[r'_embedded'])!,
      );
    }
    return null;
  }

  static List<PlaceholderUserCollectionModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PlaceholderUserCollectionModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PlaceholderUserCollectionModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PlaceholderUserCollectionModel> mapFromJson(dynamic json) {
    final map = <String, PlaceholderUserCollectionModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PlaceholderUserCollectionModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PlaceholderUserCollectionModel-objects as value to a dart map
  static Map<String, List<PlaceholderUserCollectionModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PlaceholderUserCollectionModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PlaceholderUserCollectionModel.listFromJson(entry.value, growable: growable,);
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


class PlaceholderUserCollectionModelTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const PlaceholderUserCollectionModelTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const collection = PlaceholderUserCollectionModelTypeEnum._(r'Collection');

  /// List of all possible values in this [enum][PlaceholderUserCollectionModelTypeEnum].
  static const values = <PlaceholderUserCollectionModelTypeEnum>[
    collection,
  ];

  static PlaceholderUserCollectionModelTypeEnum? fromJson(dynamic value) => PlaceholderUserCollectionModelTypeEnumTypeTransformer().decode(value);

  static List<PlaceholderUserCollectionModelTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PlaceholderUserCollectionModelTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PlaceholderUserCollectionModelTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PlaceholderUserCollectionModelTypeEnum] to String,
/// and [decode] dynamic data back to [PlaceholderUserCollectionModelTypeEnum].
class PlaceholderUserCollectionModelTypeEnumTypeTransformer {
  factory PlaceholderUserCollectionModelTypeEnumTypeTransformer() => _instance ??= const PlaceholderUserCollectionModelTypeEnumTypeTransformer._();

  const PlaceholderUserCollectionModelTypeEnumTypeTransformer._();

  String encode(PlaceholderUserCollectionModelTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PlaceholderUserCollectionModelTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PlaceholderUserCollectionModelTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Collection': return PlaceholderUserCollectionModelTypeEnum.collection;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PlaceholderUserCollectionModelTypeEnumTypeTransformer] instance.
  static PlaceholderUserCollectionModelTypeEnumTypeTransformer? _instance;
}


