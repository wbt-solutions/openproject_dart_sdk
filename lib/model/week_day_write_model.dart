//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class WeekDayWriteModel {
  /// Returns a new [WeekDayWriteModel] instance.
  WeekDayWriteModel({
    required this.type,
    required this.working,
  });

  WeekDayWriteModelTypeEnum type;

  /// `true` for a working day. `false` for a weekend day.
  bool working;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WeekDayWriteModel &&
    other.type == type &&
    other.working == working;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (working.hashCode);

  @override
  String toString() => 'WeekDayWriteModel[type=$type, working=$working]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'_type'] = this.type;
      json[r'working'] = this.working;
    return json;
  }

  /// Returns a new [WeekDayWriteModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WeekDayWriteModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WeekDayWriteModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WeekDayWriteModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WeekDayWriteModel(
        type: WeekDayWriteModelTypeEnum.fromJson(json[r'_type'])!,
        working: mapValueOfType<bool>(json, r'working')!,
      );
    }
    return null;
  }

  static List<WeekDayWriteModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WeekDayWriteModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WeekDayWriteModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WeekDayWriteModel> mapFromJson(dynamic json) {
    final map = <String, WeekDayWriteModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WeekDayWriteModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WeekDayWriteModel-objects as value to a dart map
  static Map<String, List<WeekDayWriteModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WeekDayWriteModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WeekDayWriteModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    '_type',
    'working',
  };
}


class WeekDayWriteModelTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const WeekDayWriteModelTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const weekDay = WeekDayWriteModelTypeEnum._(r'WeekDay');

  /// List of all possible values in this [enum][WeekDayWriteModelTypeEnum].
  static const values = <WeekDayWriteModelTypeEnum>[
    weekDay,
  ];

  static WeekDayWriteModelTypeEnum? fromJson(dynamic value) => WeekDayWriteModelTypeEnumTypeTransformer().decode(value);

  static List<WeekDayWriteModelTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WeekDayWriteModelTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WeekDayWriteModelTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [WeekDayWriteModelTypeEnum] to String,
/// and [decode] dynamic data back to [WeekDayWriteModelTypeEnum].
class WeekDayWriteModelTypeEnumTypeTransformer {
  factory WeekDayWriteModelTypeEnumTypeTransformer() => _instance ??= const WeekDayWriteModelTypeEnumTypeTransformer._();

  const WeekDayWriteModelTypeEnumTypeTransformer._();

  String encode(WeekDayWriteModelTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WeekDayWriteModelTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WeekDayWriteModelTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'WeekDay': return WeekDayWriteModelTypeEnum.weekDay;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [WeekDayWriteModelTypeEnumTypeTransformer] instance.
  static WeekDayWriteModelTypeEnumTypeTransformer? _instance;
}


