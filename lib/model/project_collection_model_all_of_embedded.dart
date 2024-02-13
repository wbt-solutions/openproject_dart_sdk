//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class ProjectCollectionModelAllOfEmbedded {
  /// Returns a new [ProjectCollectionModelAllOfEmbedded] instance.
  ProjectCollectionModelAllOfEmbedded({
    this.elements = const [],
  });

  List<ProjectModel> elements;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProjectCollectionModelAllOfEmbedded &&
    _deepEquality.equals(other.elements, elements);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (elements.hashCode);

  @override
  String toString() => 'ProjectCollectionModelAllOfEmbedded[elements=$elements]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'elements'] = this.elements;
    return json;
  }

  /// Returns a new [ProjectCollectionModelAllOfEmbedded] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProjectCollectionModelAllOfEmbedded? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProjectCollectionModelAllOfEmbedded[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProjectCollectionModelAllOfEmbedded[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProjectCollectionModelAllOfEmbedded(
        elements: ProjectModel.listFromJson(json[r'elements']),
      );
    }
    return null;
  }

  static List<ProjectCollectionModelAllOfEmbedded> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProjectCollectionModelAllOfEmbedded>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectCollectionModelAllOfEmbedded.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProjectCollectionModelAllOfEmbedded> mapFromJson(dynamic json) {
    final map = <String, ProjectCollectionModelAllOfEmbedded>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProjectCollectionModelAllOfEmbedded.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProjectCollectionModelAllOfEmbedded-objects as value to a dart map
  static Map<String, List<ProjectCollectionModelAllOfEmbedded>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProjectCollectionModelAllOfEmbedded>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProjectCollectionModelAllOfEmbedded.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'elements',
  };
}

