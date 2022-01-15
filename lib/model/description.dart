//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class Description {
  /// Returns a new [Description] instance.
  Description({
    this.format,
    this.raw,
    this.html,
  });

  DescriptionFormatEnum? format;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? raw;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? html;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Description &&
     other.format == format &&
     other.raw == raw &&
     other.html == html;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (format == null ? 0 : format!.hashCode) +
    (raw == null ? 0 : raw!.hashCode) +
    (html == null ? 0 : html!.hashCode);

  @override
  String toString() => 'Description[format=$format, raw=$raw, html=$html]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (format != null) {
      json[r'format'] = format;
    }
    if (raw != null) {
      json[r'raw'] = raw;
    }
    if (html != null) {
      json[r'html'] = html;
    }
    return json;
  }

  /// Returns a new [Description] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Description? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Description[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Description[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Description(
        format: DescriptionFormatEnum.fromJson(json[r'format']),
        raw: mapValueOfType<String>(json, r'raw'),
        html: mapValueOfType<String>(json, r'html'),
      );
    }
    return null;
  }

  static List<Description>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Description>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Description.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Description> mapFromJson(dynamic json) {
    final map = <String, Description>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Description.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Description-objects as value to a dart map
  static Map<String, List<Description>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Description>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Description.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


class DescriptionFormatEnum {
  /// Instantiate a new enum with the provided [value].
  const DescriptionFormatEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const plain = DescriptionFormatEnum._(r'plain');
  static const markdown = DescriptionFormatEnum._(r'markdown');
  static const custom = DescriptionFormatEnum._(r'custom');

  /// List of all possible values in this [enum][DescriptionFormatEnum].
  static const values = <DescriptionFormatEnum>[
    plain,
    markdown,
    custom,
  ];

  static DescriptionFormatEnum? fromJson(dynamic value) => DescriptionFormatEnumTypeTransformer().decode(value);

  static List<DescriptionFormatEnum>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DescriptionFormatEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DescriptionFormatEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DescriptionFormatEnum] to String,
/// and [decode] dynamic data back to [DescriptionFormatEnum].
class DescriptionFormatEnumTypeTransformer {
  factory DescriptionFormatEnumTypeTransformer() => _instance ??= const DescriptionFormatEnumTypeTransformer._();

  const DescriptionFormatEnumTypeTransformer._();

  String encode(DescriptionFormatEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DescriptionFormatEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DescriptionFormatEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data.toString()) {
        case r'plain': return DescriptionFormatEnum.plain;
        case r'markdown': return DescriptionFormatEnum.markdown;
        case r'custom': return DescriptionFormatEnum.custom;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [DescriptionFormatEnumTypeTransformer] instance.
  static DescriptionFormatEnumTypeTransformer? _instance;
}


