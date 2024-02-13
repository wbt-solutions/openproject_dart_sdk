//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class WeekDayCollectionWriteModelEmbeddedElementsInner {
  /// Returns a new [WeekDayCollectionWriteModelEmbeddedElementsInner] instance.
  WeekDayCollectionWriteModelEmbeddedElementsInner({
    required this.type,
    required this.working,
    required this.links,
  });

  WeekDayCollectionWriteModelEmbeddedElementsInnerTypeEnum type;

  /// `true` for a working day. `false` for a weekend day.
  bool working;

  WeekDaySelfLinkModel links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WeekDayCollectionWriteModelEmbeddedElementsInner &&
    other.type == type &&
    other.working == working &&
    other.links == links;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (working.hashCode) +
    (links.hashCode);

  @override
  String toString() => 'WeekDayCollectionWriteModelEmbeddedElementsInner[type=$type, working=$working, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'_type'] = this.type;
      json[r'working'] = this.working;
      json[r'_links'] = this.links;
    return json;
  }

  /// Returns a new [WeekDayCollectionWriteModelEmbeddedElementsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WeekDayCollectionWriteModelEmbeddedElementsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WeekDayCollectionWriteModelEmbeddedElementsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WeekDayCollectionWriteModelEmbeddedElementsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WeekDayCollectionWriteModelEmbeddedElementsInner(
        type: WeekDayCollectionWriteModelEmbeddedElementsInnerTypeEnum.fromJson(json[r'_type'])!,
        working: mapValueOfType<bool>(json, r'working')!,
        links: WeekDaySelfLinkModel.fromJson(json[r'_links'])!,
      );
    }
    return null;
  }

  static List<WeekDayCollectionWriteModelEmbeddedElementsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WeekDayCollectionWriteModelEmbeddedElementsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WeekDayCollectionWriteModelEmbeddedElementsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WeekDayCollectionWriteModelEmbeddedElementsInner> mapFromJson(dynamic json) {
    final map = <String, WeekDayCollectionWriteModelEmbeddedElementsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WeekDayCollectionWriteModelEmbeddedElementsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WeekDayCollectionWriteModelEmbeddedElementsInner-objects as value to a dart map
  static Map<String, List<WeekDayCollectionWriteModelEmbeddedElementsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WeekDayCollectionWriteModelEmbeddedElementsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WeekDayCollectionWriteModelEmbeddedElementsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    '_type',
    'working',
    '_links',
  };
}


class WeekDayCollectionWriteModelEmbeddedElementsInnerTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const WeekDayCollectionWriteModelEmbeddedElementsInnerTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const weekDay = WeekDayCollectionWriteModelEmbeddedElementsInnerTypeEnum._(r'WeekDay');

  /// List of all possible values in this [enum][WeekDayCollectionWriteModelEmbeddedElementsInnerTypeEnum].
  static const values = <WeekDayCollectionWriteModelEmbeddedElementsInnerTypeEnum>[
    weekDay,
  ];

  static WeekDayCollectionWriteModelEmbeddedElementsInnerTypeEnum? fromJson(dynamic value) => WeekDayCollectionWriteModelEmbeddedElementsInnerTypeEnumTypeTransformer().decode(value);

  static List<WeekDayCollectionWriteModelEmbeddedElementsInnerTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WeekDayCollectionWriteModelEmbeddedElementsInnerTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WeekDayCollectionWriteModelEmbeddedElementsInnerTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [WeekDayCollectionWriteModelEmbeddedElementsInnerTypeEnum] to String,
/// and [decode] dynamic data back to [WeekDayCollectionWriteModelEmbeddedElementsInnerTypeEnum].
class WeekDayCollectionWriteModelEmbeddedElementsInnerTypeEnumTypeTransformer {
  factory WeekDayCollectionWriteModelEmbeddedElementsInnerTypeEnumTypeTransformer() => _instance ??= const WeekDayCollectionWriteModelEmbeddedElementsInnerTypeEnumTypeTransformer._();

  const WeekDayCollectionWriteModelEmbeddedElementsInnerTypeEnumTypeTransformer._();

  String encode(WeekDayCollectionWriteModelEmbeddedElementsInnerTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a WeekDayCollectionWriteModelEmbeddedElementsInnerTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  WeekDayCollectionWriteModelEmbeddedElementsInnerTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'WeekDay': return WeekDayCollectionWriteModelEmbeddedElementsInnerTypeEnum.weekDay;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [WeekDayCollectionWriteModelEmbeddedElementsInnerTypeEnumTypeTransformer] instance.
  static WeekDayCollectionWriteModelEmbeddedElementsInnerTypeEnumTypeTransformer? _instance;
}


