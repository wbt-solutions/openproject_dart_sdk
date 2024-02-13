//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class ProjectCollectionModelAllOfLinks {
  /// Returns a new [ProjectCollectionModelAllOfLinks] instance.
  ProjectCollectionModelAllOfLinks({
    required this.self,
    this.representations = const [],
  });

  ProjectCollectionModelAllOfLinksSelf self;

  List<ProjectCollectionModelAllOfLinksRepresentations> representations;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProjectCollectionModelAllOfLinks &&
    other.self == self &&
    _deepEquality.equals(other.representations, representations);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (self.hashCode) +
    (representations.hashCode);

  @override
  String toString() => 'ProjectCollectionModelAllOfLinks[self=$self, representations=$representations]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'self'] = this.self;
      json[r'representations'] = this.representations;
    return json;
  }

  /// Returns a new [ProjectCollectionModelAllOfLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProjectCollectionModelAllOfLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProjectCollectionModelAllOfLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProjectCollectionModelAllOfLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProjectCollectionModelAllOfLinks(
        self: ProjectCollectionModelAllOfLinksSelf.fromJson(json[r'self'])!,
        representations: ProjectCollectionModelAllOfLinksRepresentations.listFromJson(json[r'representations']),
      );
    }
    return null;
  }

  static List<ProjectCollectionModelAllOfLinks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProjectCollectionModelAllOfLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectCollectionModelAllOfLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProjectCollectionModelAllOfLinks> mapFromJson(dynamic json) {
    final map = <String, ProjectCollectionModelAllOfLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProjectCollectionModelAllOfLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProjectCollectionModelAllOfLinks-objects as value to a dart map
  static Map<String, List<ProjectCollectionModelAllOfLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProjectCollectionModelAllOfLinks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProjectCollectionModelAllOfLinks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'self',
    'representations',
  };
}

