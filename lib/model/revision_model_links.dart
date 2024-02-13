//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class RevisionModelLinks {
  /// Returns a new [RevisionModelLinks] instance.
  RevisionModelLinks({
    required this.self,
    required this.project,
    this.author,
    required this.showRevision,
  });

  RevisionModelLinksSelf self;

  RevisionModelLinksProject project;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RevisionModelLinksAuthor? author;

  RevisionModelLinksShowRevision showRevision;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RevisionModelLinks &&
    other.self == self &&
    other.project == project &&
    other.author == author &&
    other.showRevision == showRevision;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (self.hashCode) +
    (project.hashCode) +
    (author == null ? 0 : author!.hashCode) +
    (showRevision.hashCode);

  @override
  String toString() => 'RevisionModelLinks[self=$self, project=$project, author=$author, showRevision=$showRevision]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'self'] = this.self;
      json[r'project'] = this.project;
    if (this.author != null) {
      json[r'author'] = this.author;
    } else {
      json[r'author'] = null;
    }
      json[r'showRevision'] = this.showRevision;
    return json;
  }

  /// Returns a new [RevisionModelLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RevisionModelLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RevisionModelLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RevisionModelLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RevisionModelLinks(
        self: RevisionModelLinksSelf.fromJson(json[r'self'])!,
        project: RevisionModelLinksProject.fromJson(json[r'project'])!,
        author: RevisionModelLinksAuthor.fromJson(json[r'author']),
        showRevision: RevisionModelLinksShowRevision.fromJson(json[r'showRevision'])!,
      );
    }
    return null;
  }

  static List<RevisionModelLinks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RevisionModelLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RevisionModelLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RevisionModelLinks> mapFromJson(dynamic json) {
    final map = <String, RevisionModelLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RevisionModelLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RevisionModelLinks-objects as value to a dart map
  static Map<String, List<RevisionModelLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RevisionModelLinks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RevisionModelLinks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'self',
    'project',
    'showRevision',
  };
}

