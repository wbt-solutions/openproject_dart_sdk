//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class NonWorkingDayCollectionModel {
  /// Returns a new [NonWorkingDayCollectionModel] instance.
  NonWorkingDayCollectionModel({
    required this.type,
    required this.total,
    required this.count,
    required this.links,
    required this.embedded,
  });

  NonWorkingDayCollectionModelTypeEnum type;

  /// The total amount of elements available in the collection.
  ///
  /// Minimum value: 0
  int total;

  /// Actual amount of elements in this response.
  ///
  /// Minimum value: 0
  int count;

  NonWorkingDayCollectionModelAllOfLinks links;

  NonWorkingDayCollectionModelAllOfEmbedded embedded;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NonWorkingDayCollectionModel &&
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
  String toString() => 'NonWorkingDayCollectionModel[type=$type, total=$total, count=$count, links=$links, embedded=$embedded]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'_type'] = this.type;
      json[r'total'] = this.total;
      json[r'count'] = this.count;
      json[r'_links'] = this.links;
      json[r'_embedded'] = this.embedded;
    return json;
  }

  /// Returns a new [NonWorkingDayCollectionModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NonWorkingDayCollectionModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "NonWorkingDayCollectionModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "NonWorkingDayCollectionModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NonWorkingDayCollectionModel(
        type: NonWorkingDayCollectionModelTypeEnum.fromJson(json[r'_type'])!,
        total: mapValueOfType<int>(json, r'total')!,
        count: mapValueOfType<int>(json, r'count')!,
        links: NonWorkingDayCollectionModelAllOfLinks.fromJson(json[r'_links'])!,
        embedded: NonWorkingDayCollectionModelAllOfEmbedded.fromJson(json[r'_embedded'])!,
      );
    }
    return null;
  }

  static List<NonWorkingDayCollectionModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NonWorkingDayCollectionModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NonWorkingDayCollectionModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NonWorkingDayCollectionModel> mapFromJson(dynamic json) {
    final map = <String, NonWorkingDayCollectionModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NonWorkingDayCollectionModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NonWorkingDayCollectionModel-objects as value to a dart map
  static Map<String, List<NonWorkingDayCollectionModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NonWorkingDayCollectionModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NonWorkingDayCollectionModel.listFromJson(entry.value, growable: growable,);
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


class NonWorkingDayCollectionModelTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const NonWorkingDayCollectionModelTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const collection = NonWorkingDayCollectionModelTypeEnum._(r'Collection');

  /// List of all possible values in this [enum][NonWorkingDayCollectionModelTypeEnum].
  static const values = <NonWorkingDayCollectionModelTypeEnum>[
    collection,
  ];

  static NonWorkingDayCollectionModelTypeEnum? fromJson(dynamic value) => NonWorkingDayCollectionModelTypeEnumTypeTransformer().decode(value);

  static List<NonWorkingDayCollectionModelTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NonWorkingDayCollectionModelTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NonWorkingDayCollectionModelTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [NonWorkingDayCollectionModelTypeEnum] to String,
/// and [decode] dynamic data back to [NonWorkingDayCollectionModelTypeEnum].
class NonWorkingDayCollectionModelTypeEnumTypeTransformer {
  factory NonWorkingDayCollectionModelTypeEnumTypeTransformer() => _instance ??= const NonWorkingDayCollectionModelTypeEnumTypeTransformer._();

  const NonWorkingDayCollectionModelTypeEnumTypeTransformer._();

  String encode(NonWorkingDayCollectionModelTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a NonWorkingDayCollectionModelTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  NonWorkingDayCollectionModelTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Collection': return NonWorkingDayCollectionModelTypeEnum.collection;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [NonWorkingDayCollectionModelTypeEnumTypeTransformer] instance.
  static NonWorkingDayCollectionModelTypeEnumTypeTransformer? _instance;
}


