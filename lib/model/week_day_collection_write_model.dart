//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class WeekDayCollectionWriteModel {
  /// Returns a new [WeekDayCollectionWriteModel] instance.
  WeekDayCollectionWriteModel({
    required this.type,
    required this.embedded,
  });

  WeekDayCollectionWriteModelTypeEnum type;

  WeekDayCollectionWriteModelEmbedded embedded;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WeekDayCollectionWriteModel &&
    other.type == type &&
    other.embedded == embedded;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (embedded.hashCode);

  @override
  String toString() => 'WeekDayCollectionWriteModel[type=$type, embedded=$embedded]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'_type'] = this.type;
      json[r'_embedded'] = this.embedded;
    return json;
  }

  /// Returns a new [WeekDayCollectionWriteModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WeekDayCollectionWriteModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WeekDayCollectionWriteModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WeekDayCollectionWriteModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WeekDayCollectionWriteModel(
        type: WeekDayCollectionWriteModelTypeEnum.fromJson(json[r'_type'])!,
        embedded: WeekDayCollectionWriteModelEmbedded.fromJson(json[r'_embedded'])!,
      );
    }
    return null;
  }

  static List<WeekDayCollectionWriteModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WeekDayCollectionWriteModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WeekDayCollectionWriteModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WeekDayCollectionWriteModel> mapFromJson(dynamic json) {
    final map = <String, WeekDayCollectionWriteModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WeekDayCollectionWriteModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WeekDayCollectionWriteModel-objects as value to a dart map
  static Map<String, List<WeekDayCollectionWriteModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WeekDayCollectionWriteModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WeekDayCollectionWriteModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    '_type',
    '_embedded',
  };
}


class WeekDayCollectionWriteModelTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const WeekDayCollectionWriteModelTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const collection = WeekDayCollectionWriteModelTypeEnum._(r'Collection');

  /// List of all possible values in this [enum][WeekDayCollectionWriteModelTypeEnum].
  static const values = <WeekDayCollectionWriteModelTypeEnum>[
    collection,
  ];

  static WeekDayCollectionWriteModelTypeEnum? fromJson(dynamic value) => WeekDayCollectionWriteModelTypeEnumTypeTransformer().decode(value);

  static List<WeekDayCollectionWriteModelTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WeekDayCollectionWriteModelTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WeekDayCollectionWriteModelTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [WeekDayCollectionWriteModelTypeEnum] to String,
/// and [decode] dynamic data back to [WeekDayCollectionWriteModelTypeEnum].
class WeekDayCollectionWriteModelTypeEnumTypeTransformer {
  factory WeekDayCollectionWriteModelTypeEnumTypeTransformer() => _instance ??= const WeekDayCollectionWriteModelTypeEnumTypeTransformer._();

  const WeekDayCollectionWriteModelTypeEnumTypeTransformer._();

  String encode(WeekDayCollectionWriteModelTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WeekDayCollectionWriteModelTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WeekDayCollectionWriteModelTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Collection': return WeekDayCollectionWriteModelTypeEnum.collection;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [WeekDayCollectionWriteModelTypeEnumTypeTransformer] instance.
  static WeekDayCollectionWriteModelTypeEnumTypeTransformer? _instance;
}


