//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class MeetingModelLinks {
  /// Returns a new [MeetingModelLinks] instance.
  MeetingModelLinks({
    this.self,
    this.author,
    this.project,
    this.attachments,
    this.addAttachment,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MeetingModelLinksSelf? self;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MeetingModelLinksAuthor? author;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MeetingModelLinksProject? project;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MeetingModelLinksAttachments? attachments;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MeetingModelLinksAddAttachment? addAttachment;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MeetingModelLinks &&
    other.self == self &&
    other.author == author &&
    other.project == project &&
    other.attachments == attachments &&
    other.addAttachment == addAttachment;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (self == null ? 0 : self!.hashCode) +
    (author == null ? 0 : author!.hashCode) +
    (project == null ? 0 : project!.hashCode) +
    (attachments == null ? 0 : attachments!.hashCode) +
    (addAttachment == null ? 0 : addAttachment!.hashCode);

  @override
  String toString() => 'MeetingModelLinks[self=$self, author=$author, project=$project, attachments=$attachments, addAttachment=$addAttachment]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.self != null) {
      json[r'self'] = this.self;
    } else {
      json[r'self'] = null;
    }
    if (this.author != null) {
      json[r'author'] = this.author;
    } else {
      json[r'author'] = null;
    }
    if (this.project != null) {
      json[r'project'] = this.project;
    } else {
      json[r'project'] = null;
    }
    if (this.attachments != null) {
      json[r'attachments'] = this.attachments;
    } else {
      json[r'attachments'] = null;
    }
    if (this.addAttachment != null) {
      json[r'addAttachment'] = this.addAttachment;
    } else {
      json[r'addAttachment'] = null;
    }
    return json;
  }

  /// Returns a new [MeetingModelLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MeetingModelLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MeetingModelLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MeetingModelLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MeetingModelLinks(
        self: MeetingModelLinksSelf.fromJson(json[r'self']),
        author: MeetingModelLinksAuthor.fromJson(json[r'author']),
        project: MeetingModelLinksProject.fromJson(json[r'project']),
        attachments: MeetingModelLinksAttachments.fromJson(json[r'attachments']),
        addAttachment: MeetingModelLinksAddAttachment.fromJson(json[r'addAttachment']),
      );
    }
    return null;
  }

  static List<MeetingModelLinks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MeetingModelLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MeetingModelLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MeetingModelLinks> mapFromJson(dynamic json) {
    final map = <String, MeetingModelLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MeetingModelLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MeetingModelLinks-objects as value to a dart map
  static Map<String, List<MeetingModelLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MeetingModelLinks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MeetingModelLinks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

