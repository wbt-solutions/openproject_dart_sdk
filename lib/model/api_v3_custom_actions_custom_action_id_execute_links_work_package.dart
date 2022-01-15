//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class ApiV3CustomActionsCustomActionIdExecuteLinksWorkPackage {
  /// Returns a new [ApiV3CustomActionsCustomActionIdExecuteLinksWorkPackage] instance.
  ApiV3CustomActionsCustomActionIdExecuteLinksWorkPackage({
    this.href,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? href;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ApiV3CustomActionsCustomActionIdExecuteLinksWorkPackage &&
     other.href == href;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (href == null ? 0 : href!.hashCode);

  @override
  String toString() => 'ApiV3CustomActionsCustomActionIdExecuteLinksWorkPackage[href=$href]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (href != null) {
      json[r'href'] = href;
    }
    return json;
  }

  /// Returns a new [ApiV3CustomActionsCustomActionIdExecuteLinksWorkPackage] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ApiV3CustomActionsCustomActionIdExecuteLinksWorkPackage? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ApiV3CustomActionsCustomActionIdExecuteLinksWorkPackage[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ApiV3CustomActionsCustomActionIdExecuteLinksWorkPackage[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ApiV3CustomActionsCustomActionIdExecuteLinksWorkPackage(
        href: mapValueOfType<String>(json, r'href'),
      );
    }
    return null;
  }

  static List<ApiV3CustomActionsCustomActionIdExecuteLinksWorkPackage>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ApiV3CustomActionsCustomActionIdExecuteLinksWorkPackage>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApiV3CustomActionsCustomActionIdExecuteLinksWorkPackage.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ApiV3CustomActionsCustomActionIdExecuteLinksWorkPackage> mapFromJson(dynamic json) {
    final map = <String, ApiV3CustomActionsCustomActionIdExecuteLinksWorkPackage>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ApiV3CustomActionsCustomActionIdExecuteLinksWorkPackage.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ApiV3CustomActionsCustomActionIdExecuteLinksWorkPackage-objects as value to a dart map
  static Map<String, List<ApiV3CustomActionsCustomActionIdExecuteLinksWorkPackage>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ApiV3CustomActionsCustomActionIdExecuteLinksWorkPackage>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ApiV3CustomActionsCustomActionIdExecuteLinksWorkPackage.listFromJson(entry.value, growable: growable,);
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

