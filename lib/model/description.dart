//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class Description {
  /// Returns a new [Description] instance.
  Description({
    this.format,
    this.raw,
    this.html,
  });

  DescriptionFormatEnum format;

  String raw;

  String html;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Description &&
     other.format == format &&
     other.raw == raw &&
     other.html == html;

  @override
  int get hashCode =>
    (format == null ? 0 : format.hashCode) +
    (raw == null ? 0 : raw.hashCode) +
    (html == null ? 0 : html.hashCode);

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
  /// [json] if it's non-null, null if [json] is null.
  static Description fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Description(
        format: DescriptionFormatEnum.fromJson(json[r'format']),
        raw: json[r'raw'],
        html: json[r'html'],
    );

  static List<Description> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Description>[]
      : json.map((dynamic value) => Description.fromJson(value)).toList(growable: true == growable);

  static Map<String, Description> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Description>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = Description.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Description-objects as value to a dart map
  static Map<String, List<Description>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Description>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = Description.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
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

  static DescriptionFormatEnum fromJson(dynamic value) =>
    DescriptionFormatEnumTypeTransformer().decode(value);

  static List<DescriptionFormatEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <DescriptionFormatEnum>[]
      : json
          .map((value) => DescriptionFormatEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [DescriptionFormatEnum] to String,
/// and [decode] dynamic data back to [DescriptionFormatEnum].
class DescriptionFormatEnumTypeTransformer {
  const DescriptionFormatEnumTypeTransformer._();

  factory DescriptionFormatEnumTypeTransformer() => _instance ??= DescriptionFormatEnumTypeTransformer._();

  String encode(DescriptionFormatEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a DescriptionFormatEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DescriptionFormatEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'plain': return DescriptionFormatEnum.plain;
      case r'markdown': return DescriptionFormatEnum.markdown;
      case r'custom': return DescriptionFormatEnum.custom;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [DescriptionFormatEnumTypeTransformer] instance.
  static DescriptionFormatEnumTypeTransformer _instance;
}

