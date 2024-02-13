//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class CategoryModelLinks {
  /// Returns a new [CategoryModelLinks] instance.
  CategoryModelLinks({
    required this.self,
    required this.project,
    this.defaultAssignee,
  });

  CategoryModelLinksSelf self;

  CategoryModelLinksProject project;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CategoryModelLinksDefaultAssignee? defaultAssignee;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CategoryModelLinks &&
    other.self == self &&
    other.project == project &&
    other.defaultAssignee == defaultAssignee;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (self.hashCode) +
    (project.hashCode) +
    (defaultAssignee == null ? 0 : defaultAssignee!.hashCode);

  @override
  String toString() => 'CategoryModelLinks[self=$self, project=$project, defaultAssignee=$defaultAssignee]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'self'] = this.self;
      json[r'project'] = this.project;
    if (this.defaultAssignee != null) {
      json[r'defaultAssignee'] = this.defaultAssignee;
    } else {
      json[r'defaultAssignee'] = null;
    }
    return json;
  }

  /// Returns a new [CategoryModelLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CategoryModelLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CategoryModelLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CategoryModelLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CategoryModelLinks(
        self: CategoryModelLinksSelf.fromJson(json[r'self'])!,
        project: CategoryModelLinksProject.fromJson(json[r'project'])!,
        defaultAssignee: CategoryModelLinksDefaultAssignee.fromJson(json[r'defaultAssignee']),
      );
    }
    return null;
  }

  static List<CategoryModelLinks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CategoryModelLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CategoryModelLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CategoryModelLinks> mapFromJson(dynamic json) {
    final map = <String, CategoryModelLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CategoryModelLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CategoryModelLinks-objects as value to a dart map
  static Map<String, List<CategoryModelLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CategoryModelLinks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CategoryModelLinks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'self',
    'project',
  };
}

