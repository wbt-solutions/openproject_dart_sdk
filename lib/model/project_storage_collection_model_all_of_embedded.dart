//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class ProjectStorageCollectionModelAllOfEmbedded {
  /// Returns a new [ProjectStorageCollectionModelAllOfEmbedded] instance.
  ProjectStorageCollectionModelAllOfEmbedded({
    this.elements = const [],
  });

  List<ProjectStorageModel> elements;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProjectStorageCollectionModelAllOfEmbedded &&
    _deepEquality.equals(other.elements, elements);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (elements.hashCode);

  @override
  String toString() => 'ProjectStorageCollectionModelAllOfEmbedded[elements=$elements]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'elements'] = this.elements;
    return json;
  }

  /// Returns a new [ProjectStorageCollectionModelAllOfEmbedded] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProjectStorageCollectionModelAllOfEmbedded? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProjectStorageCollectionModelAllOfEmbedded[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProjectStorageCollectionModelAllOfEmbedded[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProjectStorageCollectionModelAllOfEmbedded(
        elements: ProjectStorageModel.listFromJson(json[r'elements']),
      );
    }
    return null;
  }

  static List<ProjectStorageCollectionModelAllOfEmbedded> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProjectStorageCollectionModelAllOfEmbedded>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectStorageCollectionModelAllOfEmbedded.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProjectStorageCollectionModelAllOfEmbedded> mapFromJson(dynamic json) {
    final map = <String, ProjectStorageCollectionModelAllOfEmbedded>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProjectStorageCollectionModelAllOfEmbedded.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProjectStorageCollectionModelAllOfEmbedded-objects as value to a dart map
  static Map<String, List<ProjectStorageCollectionModelAllOfEmbedded>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProjectStorageCollectionModelAllOfEmbedded>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProjectStorageCollectionModelAllOfEmbedded.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'elements',
  };
}

