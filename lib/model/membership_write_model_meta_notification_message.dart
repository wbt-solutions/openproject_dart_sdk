//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class MembershipWriteModelMetaNotificationMessage {
  /// Returns a new [MembershipWriteModelMetaNotificationMessage] instance.
  MembershipWriteModelMetaNotificationMessage({
    required this.format,
    this.raw,
    this.html,
  });

  /// Indicates the formatting language of the raw text
  MembershipWriteModelMetaNotificationMessageFormatEnum format;

  /// The raw text, as entered by the user
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? raw;

  /// The text converted to HTML according to the format
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? html;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MembershipWriteModelMetaNotificationMessage &&
    other.format == format &&
    other.raw == raw &&
    other.html == html;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (format.hashCode) +
    (raw == null ? 0 : raw!.hashCode) +
    (html == null ? 0 : html!.hashCode);

  @override
  String toString() => 'MembershipWriteModelMetaNotificationMessage[format=$format, raw=$raw, html=$html]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'format'] = this.format;
    if (this.raw != null) {
      json[r'raw'] = this.raw;
    } else {
      json[r'raw'] = null;
    }
    if (this.html != null) {
      json[r'html'] = this.html;
    } else {
      json[r'html'] = null;
    }
    return json;
  }

  /// Returns a new [MembershipWriteModelMetaNotificationMessage] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MembershipWriteModelMetaNotificationMessage? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MembershipWriteModelMetaNotificationMessage[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MembershipWriteModelMetaNotificationMessage[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MembershipWriteModelMetaNotificationMessage(
        format: MembershipWriteModelMetaNotificationMessageFormatEnum.fromJson(json[r'format'])!,
        raw: mapValueOfType<String>(json, r'raw'),
        html: mapValueOfType<String>(json, r'html'),
      );
    }
    return null;
  }

  static List<MembershipWriteModelMetaNotificationMessage> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MembershipWriteModelMetaNotificationMessage>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MembershipWriteModelMetaNotificationMessage.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MembershipWriteModelMetaNotificationMessage> mapFromJson(dynamic json) {
    final map = <String, MembershipWriteModelMetaNotificationMessage>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MembershipWriteModelMetaNotificationMessage.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MembershipWriteModelMetaNotificationMessage-objects as value to a dart map
  static Map<String, List<MembershipWriteModelMetaNotificationMessage>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MembershipWriteModelMetaNotificationMessage>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MembershipWriteModelMetaNotificationMessage.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'format',
  };
}

/// Indicates the formatting language of the raw text
class MembershipWriteModelMetaNotificationMessageFormatEnum {
  /// Instantiate a new enum with the provided [value].
  const MembershipWriteModelMetaNotificationMessageFormatEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const plain = MembershipWriteModelMetaNotificationMessageFormatEnum._(r'plain');
  static const markdown = MembershipWriteModelMetaNotificationMessageFormatEnum._(r'markdown');
  static const custom = MembershipWriteModelMetaNotificationMessageFormatEnum._(r'custom');

  /// List of all possible values in this [enum][MembershipWriteModelMetaNotificationMessageFormatEnum].
  static const values = <MembershipWriteModelMetaNotificationMessageFormatEnum>[
    plain,
    markdown,
    custom,
  ];

  static MembershipWriteModelMetaNotificationMessageFormatEnum? fromJson(dynamic value) => MembershipWriteModelMetaNotificationMessageFormatEnumTypeTransformer().decode(value);

  static List<MembershipWriteModelMetaNotificationMessageFormatEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MembershipWriteModelMetaNotificationMessageFormatEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MembershipWriteModelMetaNotificationMessageFormatEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [MembershipWriteModelMetaNotificationMessageFormatEnum] to String,
/// and [decode] dynamic data back to [MembershipWriteModelMetaNotificationMessageFormatEnum].
class MembershipWriteModelMetaNotificationMessageFormatEnumTypeTransformer {
  factory MembershipWriteModelMetaNotificationMessageFormatEnumTypeTransformer() => _instance ??= const MembershipWriteModelMetaNotificationMessageFormatEnumTypeTransformer._();

  const MembershipWriteModelMetaNotificationMessageFormatEnumTypeTransformer._();

  String encode(MembershipWriteModelMetaNotificationMessageFormatEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a MembershipWriteModelMetaNotificationMessageFormatEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  MembershipWriteModelMetaNotificationMessageFormatEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'plain': return MembershipWriteModelMetaNotificationMessageFormatEnum.plain;
        case r'markdown': return MembershipWriteModelMetaNotificationMessageFormatEnum.markdown;
        case r'custom': return MembershipWriteModelMetaNotificationMessageFormatEnum.custom;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [MembershipWriteModelMetaNotificationMessageFormatEnumTypeTransformer] instance.
  static MembershipWriteModelMetaNotificationMessageFormatEnumTypeTransformer? _instance;
}


