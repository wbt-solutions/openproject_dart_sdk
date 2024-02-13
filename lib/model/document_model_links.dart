//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class DocumentModelLinks {
  /// Returns a new [DocumentModelLinks] instance.
  DocumentModelLinks({
    required this.self,
    required this.project,
    required this.attachments,
  });

  DocumentModelLinksSelf self;

  DocumentModelLinksProject project;

  DocumentModelLinksAttachments attachments;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DocumentModelLinks &&
    other.self == self &&
    other.project == project &&
    other.attachments == attachments;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (self.hashCode) +
    (project.hashCode) +
    (attachments.hashCode);

  @override
  String toString() => 'DocumentModelLinks[self=$self, project=$project, attachments=$attachments]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'self'] = this.self;
      json[r'project'] = this.project;
      json[r'attachments'] = this.attachments;
    return json;
  }

  /// Returns a new [DocumentModelLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DocumentModelLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "DocumentModelLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "DocumentModelLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return DocumentModelLinks(
        self: DocumentModelLinksSelf.fromJson(json[r'self'])!,
        project: DocumentModelLinksProject.fromJson(json[r'project'])!,
        attachments: DocumentModelLinksAttachments.fromJson(json[r'attachments'])!,
      );
    }
    return null;
  }

  static List<DocumentModelLinks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DocumentModelLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DocumentModelLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DocumentModelLinks> mapFromJson(dynamic json) {
    final map = <String, DocumentModelLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DocumentModelLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DocumentModelLinks-objects as value to a dart map
  static Map<String, List<DocumentModelLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DocumentModelLinks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DocumentModelLinks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'self',
    'project',
    'attachments',
  };
}

