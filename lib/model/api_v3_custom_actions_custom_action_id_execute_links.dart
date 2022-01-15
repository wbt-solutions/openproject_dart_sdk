//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class ApiV3CustomActionsCustomActionIdExecuteLinks {
  /// Returns a new [ApiV3CustomActionsCustomActionIdExecuteLinks] instance.
  ApiV3CustomActionsCustomActionIdExecuteLinks({
    this.workPackage,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ApiV3CustomActionsCustomActionIdExecuteLinksWorkPackage? workPackage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ApiV3CustomActionsCustomActionIdExecuteLinks &&
     other.workPackage == workPackage;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (workPackage == null ? 0 : workPackage!.hashCode);

  @override
  String toString() => 'ApiV3CustomActionsCustomActionIdExecuteLinks[workPackage=$workPackage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (workPackage != null) {
      json[r'workPackage'] = workPackage;
    }
    return json;
  }

  /// Returns a new [ApiV3CustomActionsCustomActionIdExecuteLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ApiV3CustomActionsCustomActionIdExecuteLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ApiV3CustomActionsCustomActionIdExecuteLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ApiV3CustomActionsCustomActionIdExecuteLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ApiV3CustomActionsCustomActionIdExecuteLinks(
        workPackage: ApiV3CustomActionsCustomActionIdExecuteLinksWorkPackage.fromJson(json[r'workPackage']),
      );
    }
    return null;
  }

  static List<ApiV3CustomActionsCustomActionIdExecuteLinks>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ApiV3CustomActionsCustomActionIdExecuteLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApiV3CustomActionsCustomActionIdExecuteLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ApiV3CustomActionsCustomActionIdExecuteLinks> mapFromJson(dynamic json) {
    final map = <String, ApiV3CustomActionsCustomActionIdExecuteLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ApiV3CustomActionsCustomActionIdExecuteLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ApiV3CustomActionsCustomActionIdExecuteLinks-objects as value to a dart map
  static Map<String, List<ApiV3CustomActionsCustomActionIdExecuteLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ApiV3CustomActionsCustomActionIdExecuteLinks>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ApiV3CustomActionsCustomActionIdExecuteLinks.listFromJson(entry.value, growable: growable,);
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

