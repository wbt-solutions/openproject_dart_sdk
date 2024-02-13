//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class WatchersModel {
  /// Returns a new [WatchersModel] instance.
  WatchersModel({
    required this.type,
    required this.total,
    required this.count,
    required this.links,
    required this.embedded,
  });

  WatchersModelTypeEnum type;

  /// The total amount of elements available in the collection.
  ///
  /// Minimum value: 0
  int total;

  /// Actual amount of elements in this response.
  ///
  /// Minimum value: 0
  int count;

  WatchersModelAllOfLinks links;

  WatchersModelAllOfEmbedded embedded;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WatchersModel &&
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
  String toString() => 'WatchersModel[type=$type, total=$total, count=$count, links=$links, embedded=$embedded]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'_type'] = this.type;
      json[r'total'] = this.total;
      json[r'count'] = this.count;
      json[r'_links'] = this.links;
      json[r'_embedded'] = this.embedded;
    return json;
  }

  /// Returns a new [WatchersModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WatchersModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WatchersModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WatchersModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WatchersModel(
        type: WatchersModelTypeEnum.fromJson(json[r'_type'])!,
        total: mapValueOfType<int>(json, r'total')!,
        count: mapValueOfType<int>(json, r'count')!,
        links: WatchersModelAllOfLinks.fromJson(json[r'_links'])!,
        embedded: WatchersModelAllOfEmbedded.fromJson(json[r'_embedded'])!,
      );
    }
    return null;
  }

  static List<WatchersModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WatchersModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WatchersModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WatchersModel> mapFromJson(dynamic json) {
    final map = <String, WatchersModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WatchersModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WatchersModel-objects as value to a dart map
  static Map<String, List<WatchersModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WatchersModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WatchersModel.listFromJson(entry.value, growable: growable,);
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


class WatchersModelTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const WatchersModelTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const collection = WatchersModelTypeEnum._(r'Collection');

  /// List of all possible values in this [enum][WatchersModelTypeEnum].
  static const values = <WatchersModelTypeEnum>[
    collection,
  ];

  static WatchersModelTypeEnum? fromJson(dynamic value) => WatchersModelTypeEnumTypeTransformer().decode(value);

  static List<WatchersModelTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WatchersModelTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WatchersModelTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [WatchersModelTypeEnum] to String,
/// and [decode] dynamic data back to [WatchersModelTypeEnum].
class WatchersModelTypeEnumTypeTransformer {
  factory WatchersModelTypeEnumTypeTransformer() => _instance ??= const WatchersModelTypeEnumTypeTransformer._();

  const WatchersModelTypeEnumTypeTransformer._();

  String encode(WatchersModelTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WatchersModelTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WatchersModelTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Collection': return WatchersModelTypeEnum.collection;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [WatchersModelTypeEnumTypeTransformer] instance.
  static WatchersModelTypeEnumTypeTransformer? _instance;
}


