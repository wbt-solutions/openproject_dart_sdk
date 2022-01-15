//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class NewsEmbedded {
  /// Returns a new [NewsEmbedded] instance.
  NewsEmbedded({
    this.project,
    this.author,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Project? project;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  User? author;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NewsEmbedded &&
     other.project == project &&
     other.author == author;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (project == null ? 0 : project!.hashCode) +
    (author == null ? 0 : author!.hashCode);

  @override
  String toString() => 'NewsEmbedded[project=$project, author=$author]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (project != null) {
      json[r'project'] = project;
    }
    if (author != null) {
      json[r'author'] = author;
    }
    return json;
  }

  /// Returns a new [NewsEmbedded] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NewsEmbedded? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "NewsEmbedded[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "NewsEmbedded[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NewsEmbedded(
        project: Project.fromJson(json[r'project']),
        author: User.fromJson(json[r'author']),
      );
    }
    return null;
  }

  static List<NewsEmbedded>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NewsEmbedded>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NewsEmbedded.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NewsEmbedded> mapFromJson(dynamic json) {
    final map = <String, NewsEmbedded>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NewsEmbedded.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NewsEmbedded-objects as value to a dart map
  static Map<String, List<NewsEmbedded>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NewsEmbedded>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NewsEmbedded.listFromJson(entry.value, growable: growable,);
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

