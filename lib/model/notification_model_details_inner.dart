//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class NotificationModelDetailsInner {
  /// Returns a new [NotificationModelDetailsInner] instance.
  NotificationModelDetailsInner({
    required this.type,
    required this.property,
    required this.value,
    required this.links,
  });

  NotificationModelDetailsInnerTypeEnum type;

  /// The key of the key - value pair represented by the Values::Property
  String property;

  /// The value of the key - value pair represented by the Values::Property
  String value;

  ValuesPropertyModelLinks links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NotificationModelDetailsInner &&
    other.type == type &&
    other.property == property &&
    other.value == value &&
    other.links == links;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (property.hashCode) +
    (value.hashCode) +
    (links.hashCode);

  @override
  String toString() => 'NotificationModelDetailsInner[type=$type, property=$property, value=$value, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'_type'] = this.type;
      json[r'property'] = this.property;
      json[r'value'] = this.value;
      json[r'_links'] = this.links;
    return json;
  }

  /// Returns a new [NotificationModelDetailsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NotificationModelDetailsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "NotificationModelDetailsInner[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "NotificationModelDetailsInner[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NotificationModelDetailsInner(
        type: NotificationModelDetailsInnerTypeEnum.fromJson(json[r'_type'])!,
        property: mapValueOfType<String>(json, r'property')!,
        value: mapValueOfType<String>(json, r'value')!,
        links: ValuesPropertyModelLinks.fromJson(json[r'_links'])!,
      );
    }
    return null;
  }

  static List<NotificationModelDetailsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NotificationModelDetailsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NotificationModelDetailsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NotificationModelDetailsInner> mapFromJson(dynamic json) {
    final map = <String, NotificationModelDetailsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NotificationModelDetailsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NotificationModelDetailsInner-objects as value to a dart map
  static Map<String, List<NotificationModelDetailsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NotificationModelDetailsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NotificationModelDetailsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    '_type',
    'property',
    'value',
    '_links',
  };
}


class NotificationModelDetailsInnerTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const NotificationModelDetailsInnerTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const valuesColonColonProperty = NotificationModelDetailsInnerTypeEnum._(r'Values::Property');

  /// List of all possible values in this [enum][NotificationModelDetailsInnerTypeEnum].
  static const values = <NotificationModelDetailsInnerTypeEnum>[
    valuesColonColonProperty,
  ];

  static NotificationModelDetailsInnerTypeEnum? fromJson(dynamic value) => NotificationModelDetailsInnerTypeEnumTypeTransformer().decode(value);

  static List<NotificationModelDetailsInnerTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NotificationModelDetailsInnerTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NotificationModelDetailsInnerTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [NotificationModelDetailsInnerTypeEnum] to String,
/// and [decode] dynamic data back to [NotificationModelDetailsInnerTypeEnum].
class NotificationModelDetailsInnerTypeEnumTypeTransformer {
  factory NotificationModelDetailsInnerTypeEnumTypeTransformer() => _instance ??= const NotificationModelDetailsInnerTypeEnumTypeTransformer._();

  const NotificationModelDetailsInnerTypeEnumTypeTransformer._();

  String encode(NotificationModelDetailsInnerTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a NotificationModelDetailsInnerTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  NotificationModelDetailsInnerTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Values::Property': return NotificationModelDetailsInnerTypeEnum.valuesColonColonProperty;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [NotificationModelDetailsInnerTypeEnumTypeTransformer] instance.
  static NotificationModelDetailsInnerTypeEnumTypeTransformer? _instance;
}


