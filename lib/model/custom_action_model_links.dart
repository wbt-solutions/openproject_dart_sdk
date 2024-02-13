//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class CustomActionModelLinks {
  /// Returns a new [CustomActionModelLinks] instance.
  CustomActionModelLinks({
    required this.self,
    required this.executeImmediately,
  });

  CustomActionModelLinksSelf self;

  CustomActionModelLinksExecuteImmediately executeImmediately;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CustomActionModelLinks &&
    other.self == self &&
    other.executeImmediately == executeImmediately;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (self.hashCode) +
    (executeImmediately.hashCode);

  @override
  String toString() => 'CustomActionModelLinks[self=$self, executeImmediately=$executeImmediately]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'self'] = this.self;
      json[r'executeImmediately'] = this.executeImmediately;
    return json;
  }

  /// Returns a new [CustomActionModelLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CustomActionModelLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CustomActionModelLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CustomActionModelLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CustomActionModelLinks(
        self: CustomActionModelLinksSelf.fromJson(json[r'self'])!,
        executeImmediately: CustomActionModelLinksExecuteImmediately.fromJson(json[r'executeImmediately'])!,
      );
    }
    return null;
  }

  static List<CustomActionModelLinks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CustomActionModelLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CustomActionModelLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CustomActionModelLinks> mapFromJson(dynamic json) {
    final map = <String, CustomActionModelLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CustomActionModelLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CustomActionModelLinks-objects as value to a dart map
  static Map<String, List<CustomActionModelLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CustomActionModelLinks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CustomActionModelLinks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'self',
    'executeImmediately',
  };
}

