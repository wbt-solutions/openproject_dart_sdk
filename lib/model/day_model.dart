//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class DayModel {
  /// Returns a new [DayModel] instance.
  DayModel({
    required this.type,
    required this.date,
    required this.name,
    required this.working,
    this.links,
  });

  DayModelTypeEnum type;

  /// Date of the day.
  DateTime date;

  /// Descriptive name for the day.
  String name;

  /// `true` for a working day, `false` otherwise.
  bool working;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DayModelLinks? links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DayModel &&
    other.type == type &&
    other.date == date &&
    other.name == name &&
    other.working == working &&
    other.links == links;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (date.hashCode) +
    (name.hashCode) +
    (working.hashCode) +
    (links == null ? 0 : links!.hashCode);

  @override
  String toString() => 'DayModel[type=$type, date=$date, name=$name, working=$working, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'_type'] = this.type;
      json[r'date'] = _dateFormatter.format(this.date.toUtc());
      json[r'name'] = this.name;
      json[r'working'] = this.working;
    if (this.links != null) {
      json[r'_links'] = this.links;
    } else {
      json[r'_links'] = null;
    }
    return json;
  }

  /// Returns a new [DayModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DayModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DayModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DayModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DayModel(
        type: DayModelTypeEnum.fromJson(json[r'_type'])!,
        date: mapDateTime(json, r'date', r'')!,
        name: mapValueOfType<String>(json, r'name')!,
        working: mapValueOfType<bool>(json, r'working')!,
        links: DayModelLinks.fromJson(json[r'_links']),
      );
    }
    return null;
  }

  static List<DayModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DayModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DayModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DayModel> mapFromJson(dynamic json) {
    final map = <String, DayModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DayModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DayModel-objects as value to a dart map
  static Map<String, List<DayModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DayModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DayModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    '_type',
    'date',
    'name',
    'working',
  };
}


class DayModelTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const DayModelTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const day = DayModelTypeEnum._(r'Day');

  /// List of all possible values in this [enum][DayModelTypeEnum].
  static const values = <DayModelTypeEnum>[
    day,
  ];

  static DayModelTypeEnum? fromJson(dynamic value) => DayModelTypeEnumTypeTransformer().decode(value);

  static List<DayModelTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DayModelTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DayModelTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DayModelTypeEnum] to String,
/// and [decode] dynamic data back to [DayModelTypeEnum].
class DayModelTypeEnumTypeTransformer {
  factory DayModelTypeEnumTypeTransformer() => _instance ??= const DayModelTypeEnumTypeTransformer._();

  const DayModelTypeEnumTypeTransformer._();

  String encode(DayModelTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DayModelTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DayModelTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Day': return DayModelTypeEnum.day;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DayModelTypeEnumTypeTransformer] instance.
  static DayModelTypeEnumTypeTransformer? _instance;
}


