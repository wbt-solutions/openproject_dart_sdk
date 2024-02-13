//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class NonWorkingDayModel {
  /// Returns a new [NonWorkingDayModel] instance.
  NonWorkingDayModel({
    required this.type,
    required this.date,
    required this.name,
    this.links,
  });

  NonWorkingDayModelTypeEnum type;

  /// Date of the non-working day.
  DateTime date;

  /// Descriptive name for the non-working day.
  String name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  NonWorkingDayModelLinks? links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NonWorkingDayModel &&
    other.type == type &&
    other.date == date &&
    other.name == name &&
    other.links == links;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (date.hashCode) +
    (name.hashCode) +
    (links == null ? 0 : links!.hashCode);

  @override
  String toString() => 'NonWorkingDayModel[type=$type, date=$date, name=$name, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'_type'] = this.type;
      json[r'date'] = _dateFormatter.format(this.date.toUtc());
      json[r'name'] = this.name;
    if (this.links != null) {
      json[r'_links'] = this.links;
    } else {
      json[r'_links'] = null;
    }
    return json;
  }

  /// Returns a new [NonWorkingDayModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NonWorkingDayModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "NonWorkingDayModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "NonWorkingDayModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NonWorkingDayModel(
        type: NonWorkingDayModelTypeEnum.fromJson(json[r'_type'])!,
        date: mapDateTime(json, r'date', r'')!,
        name: mapValueOfType<String>(json, r'name')!,
        links: NonWorkingDayModelLinks.fromJson(json[r'_links']),
      );
    }
    return null;
  }

  static List<NonWorkingDayModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NonWorkingDayModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NonWorkingDayModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NonWorkingDayModel> mapFromJson(dynamic json) {
    final map = <String, NonWorkingDayModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NonWorkingDayModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NonWorkingDayModel-objects as value to a dart map
  static Map<String, List<NonWorkingDayModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NonWorkingDayModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NonWorkingDayModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    '_type',
    'date',
    'name',
  };
}


class NonWorkingDayModelTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const NonWorkingDayModelTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const nonWorkingDay = NonWorkingDayModelTypeEnum._(r'NonWorkingDay');

  /// List of all possible values in this [enum][NonWorkingDayModelTypeEnum].
  static const values = <NonWorkingDayModelTypeEnum>[
    nonWorkingDay,
  ];

  static NonWorkingDayModelTypeEnum? fromJson(dynamic value) => NonWorkingDayModelTypeEnumTypeTransformer().decode(value);

  static List<NonWorkingDayModelTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NonWorkingDayModelTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NonWorkingDayModelTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [NonWorkingDayModelTypeEnum] to String,
/// and [decode] dynamic data back to [NonWorkingDayModelTypeEnum].
class NonWorkingDayModelTypeEnumTypeTransformer {
  factory NonWorkingDayModelTypeEnumTypeTransformer() => _instance ??= const NonWorkingDayModelTypeEnumTypeTransformer._();

  const NonWorkingDayModelTypeEnumTypeTransformer._();

  String encode(NonWorkingDayModelTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a NonWorkingDayModelTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  NonWorkingDayModelTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'NonWorkingDay': return NonWorkingDayModelTypeEnum.nonWorkingDay;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [NonWorkingDayModelTypeEnumTypeTransformer] instance.
  static NonWorkingDayModelTypeEnumTypeTransformer? _instance;
}


