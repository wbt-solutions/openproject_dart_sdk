//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class NewsLinks {
  /// Returns a new [NewsLinks] instance.
  NewsLinks({
    this.self,
    this.project,
    this.author,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Link? self;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Link? project;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Link? author;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NewsLinks &&
     other.self == self &&
     other.project == project &&
     other.author == author;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (self == null ? 0 : self!.hashCode) +
    (project == null ? 0 : project!.hashCode) +
    (author == null ? 0 : author!.hashCode);

  @override
  String toString() => 'NewsLinks[self=$self, project=$project, author=$author]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (self != null) {
      json[r'self'] = self;
    }
    if (project != null) {
      json[r'project'] = project;
    }
    if (author != null) {
      json[r'author'] = author;
    }
    return json;
  }

  /// Returns a new [NewsLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NewsLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "NewsLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "NewsLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NewsLinks(
        self: Link.fromJson(json[r'self']),
        project: Link.fromJson(json[r'project']),
        author: Link.fromJson(json[r'author']),
      );
    }
    return null;
  }

  static List<NewsLinks>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NewsLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NewsLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NewsLinks> mapFromJson(dynamic json) {
    final map = <String, NewsLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NewsLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NewsLinks-objects as value to a dart map
  static Map<String, List<NewsLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NewsLinks>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NewsLinks.listFromJson(entry.value, growable: growable,);
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

