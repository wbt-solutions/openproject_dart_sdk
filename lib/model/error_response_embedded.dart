//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class ErrorResponseEmbedded {
  /// Returns a new [ErrorResponseEmbedded] instance.
  ErrorResponseEmbedded({
    this.details,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ErrorResponseEmbeddedDetails? details;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ErrorResponseEmbedded &&
    other.details == details;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (details == null ? 0 : details!.hashCode);

  @override
  String toString() => 'ErrorResponseEmbedded[details=$details]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.details != null) {
      json[r'details'] = this.details;
    } else {
      json[r'details'] = null;
    }
    return json;
  }

  /// Returns a new [ErrorResponseEmbedded] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ErrorResponseEmbedded? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ErrorResponseEmbedded[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ErrorResponseEmbedded[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ErrorResponseEmbedded(
        details: ErrorResponseEmbeddedDetails.fromJson(json[r'details']),
      );
    }
    return null;
  }

  static List<ErrorResponseEmbedded> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ErrorResponseEmbedded>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ErrorResponseEmbedded.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ErrorResponseEmbedded> mapFromJson(dynamic json) {
    final map = <String, ErrorResponseEmbedded>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ErrorResponseEmbedded.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ErrorResponseEmbedded-objects as value to a dart map
  static Map<String, List<ErrorResponseEmbedded>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ErrorResponseEmbedded>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ErrorResponseEmbedded.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

