//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class PaginatedCollectionModel {
  /// Returns a new [PaginatedCollectionModel] instance.
  PaginatedCollectionModel({
    required this.type,
    required this.total,
    required this.count,
    required this.links,
    required this.pageSize,
    required this.offset,
  });

  PaginatedCollectionModelTypeEnum type;

  /// The total amount of elements available in the collection.
  ///
  /// Minimum value: 0
  int total;

  /// Actual amount of elements in this response.
  ///
  /// Minimum value: 0
  int count;

  PaginatedCollectionModelAllOfLinks links;

  /// Amount of elements that a response will hold.
  ///
  /// Minimum value: 0
  int pageSize;

  /// The page number that is requested from paginated collection.
  ///
  /// Minimum value: 1
  int offset;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PaginatedCollectionModel &&
    other.type == type &&
    other.total == total &&
    other.count == count &&
    other.links == links &&
    other.pageSize == pageSize &&
    other.offset == offset;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (total.hashCode) +
    (count.hashCode) +
    (links.hashCode) +
    (pageSize.hashCode) +
    (offset.hashCode);

  @override
  String toString() => 'PaginatedCollectionModel[type=$type, total=$total, count=$count, links=$links, pageSize=$pageSize, offset=$offset]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'_type'] = this.type;
      json[r'total'] = this.total;
      json[r'count'] = this.count;
      json[r'_links'] = this.links;
      json[r'pageSize'] = this.pageSize;
      json[r'offset'] = this.offset;
    return json;
  }

  /// Returns a new [PaginatedCollectionModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PaginatedCollectionModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PaginatedCollectionModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PaginatedCollectionModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PaginatedCollectionModel(
        type: PaginatedCollectionModelTypeEnum.fromJson(json[r'_type'])!,
        total: mapValueOfType<int>(json, r'total')!,
        count: mapValueOfType<int>(json, r'count')!,
        links: PaginatedCollectionModelAllOfLinks.fromJson(json[r'_links'])!,
        pageSize: mapValueOfType<int>(json, r'pageSize')!,
        offset: mapValueOfType<int>(json, r'offset')!,
      );
    }
    return null;
  }

  static List<PaginatedCollectionModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PaginatedCollectionModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PaginatedCollectionModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PaginatedCollectionModel> mapFromJson(dynamic json) {
    final map = <String, PaginatedCollectionModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PaginatedCollectionModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PaginatedCollectionModel-objects as value to a dart map
  static Map<String, List<PaginatedCollectionModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PaginatedCollectionModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PaginatedCollectionModel.listFromJson(entry.value, growable: growable,);
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
    'pageSize',
    'offset',
  };
}


class PaginatedCollectionModelTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const PaginatedCollectionModelTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const collection = PaginatedCollectionModelTypeEnum._(r'Collection');

  /// List of all possible values in this [enum][PaginatedCollectionModelTypeEnum].
  static const values = <PaginatedCollectionModelTypeEnum>[
    collection,
  ];

  static PaginatedCollectionModelTypeEnum? fromJson(dynamic value) => PaginatedCollectionModelTypeEnumTypeTransformer().decode(value);

  static List<PaginatedCollectionModelTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PaginatedCollectionModelTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PaginatedCollectionModelTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PaginatedCollectionModelTypeEnum] to String,
/// and [decode] dynamic data back to [PaginatedCollectionModelTypeEnum].
class PaginatedCollectionModelTypeEnumTypeTransformer {
  factory PaginatedCollectionModelTypeEnumTypeTransformer() => _instance ??= const PaginatedCollectionModelTypeEnumTypeTransformer._();

  const PaginatedCollectionModelTypeEnumTypeTransformer._();

  String encode(PaginatedCollectionModelTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PaginatedCollectionModelTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PaginatedCollectionModelTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Collection': return PaginatedCollectionModelTypeEnum.collection;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PaginatedCollectionModelTypeEnumTypeTransformer] instance.
  static PaginatedCollectionModelTypeEnumTypeTransformer? _instance;
}


