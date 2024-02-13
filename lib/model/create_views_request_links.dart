//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class CreateViewsRequestLinks {
  /// Returns a new [CreateViewsRequestLinks] instance.
  CreateViewsRequestLinks({
    this.query,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CreateViewsRequestLinksQuery? query;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateViewsRequestLinks &&
    other.query == query;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (query == null ? 0 : query!.hashCode);

  @override
  String toString() => 'CreateViewsRequestLinks[query=$query]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.query != null) {
      json[r'query'] = this.query;
    } else {
      json[r'query'] = null;
    }
    return json;
  }

  /// Returns a new [CreateViewsRequestLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateViewsRequestLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateViewsRequestLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateViewsRequestLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateViewsRequestLinks(
        query: CreateViewsRequestLinksQuery.fromJson(json[r'query']),
      );
    }
    return null;
  }

  static List<CreateViewsRequestLinks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateViewsRequestLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateViewsRequestLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateViewsRequestLinks> mapFromJson(dynamic json) {
    final map = <String, CreateViewsRequestLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateViewsRequestLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateViewsRequestLinks-objects as value to a dart map
  static Map<String, List<CreateViewsRequestLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateViewsRequestLinks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateViewsRequestLinks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

