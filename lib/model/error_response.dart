//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class ErrorResponse {
  /// Returns a new [ErrorResponse] instance.
  ErrorResponse({
    this.embedded,
    required this.type,
    required this.errorIdentifier,
    required this.message,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ErrorResponseEmbedded? embedded;

  ErrorResponseTypeEnum type;

  String errorIdentifier;

  String message;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ErrorResponse &&
    other.embedded == embedded &&
    other.type == type &&
    other.errorIdentifier == errorIdentifier &&
    other.message == message;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (embedded == null ? 0 : embedded!.hashCode) +
    (type.hashCode) +
    (errorIdentifier.hashCode) +
    (message.hashCode);

  @override
  String toString() => 'ErrorResponse[embedded=$embedded, type=$type, errorIdentifier=$errorIdentifier, message=$message]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.embedded != null) {
      json[r'_embedded'] = this.embedded;
    } else {
      json[r'_embedded'] = null;
    }
      json[r'_type'] = this.type;
      json[r'errorIdentifier'] = this.errorIdentifier;
      json[r'message'] = this.message;
    return json;
  }

  /// Returns a new [ErrorResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ErrorResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ErrorResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ErrorResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ErrorResponse(
        embedded: ErrorResponseEmbedded.fromJson(json[r'_embedded']),
        type: ErrorResponseTypeEnum.fromJson(json[r'_type'])!,
        errorIdentifier: mapValueOfType<String>(json, r'errorIdentifier')!,
        message: mapValueOfType<String>(json, r'message')!,
      );
    }
    return null;
  }

  static List<ErrorResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ErrorResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ErrorResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ErrorResponse> mapFromJson(dynamic json) {
    final map = <String, ErrorResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ErrorResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ErrorResponse-objects as value to a dart map
  static Map<String, List<ErrorResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ErrorResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ErrorResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    '_type',
    'errorIdentifier',
    'message',
  };
}


class ErrorResponseTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const ErrorResponseTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const error = ErrorResponseTypeEnum._(r'Error');

  /// List of all possible values in this [enum][ErrorResponseTypeEnum].
  static const values = <ErrorResponseTypeEnum>[
    error,
  ];

  static ErrorResponseTypeEnum? fromJson(dynamic value) => ErrorResponseTypeEnumTypeTransformer().decode(value);

  static List<ErrorResponseTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ErrorResponseTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ErrorResponseTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ErrorResponseTypeEnum] to String,
/// and [decode] dynamic data back to [ErrorResponseTypeEnum].
class ErrorResponseTypeEnumTypeTransformer {
  factory ErrorResponseTypeEnumTypeTransformer() => _instance ??= const ErrorResponseTypeEnumTypeTransformer._();

  const ErrorResponseTypeEnumTypeTransformer._();

  String encode(ErrorResponseTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a ErrorResponseTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ErrorResponseTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Error': return ErrorResponseTypeEnum.error;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [ErrorResponseTypeEnumTypeTransformer] instance.
  static ErrorResponseTypeEnumTypeTransformer? _instance;
}


