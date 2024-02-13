//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class RevisionModel {
  /// Returns a new [RevisionModel] instance.
  RevisionModel({
    this.id,
    required this.identifier,
    required this.formattedIdentifier,
    required this.authorName,
    required this.message,
    required this.createdAt,
    this.links,
  });

  /// Revision's id, assigned by OpenProject
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  /// The raw SCM identifier of the revision (e.g. full SHA hash)
  String identifier;

  /// The SCM identifier of the revision, formatted (e.g. shortened unambiguous SHA hash). May be identical to identifier in many cases
  String formattedIdentifier;

  /// The name of the author that committed this revision. Note that this name is retrieved from the repository and does not identify a user in OpenProject.
  String authorName;

  RevisionModelMessage message;

  /// The time this revision was committed to the repository
  DateTime createdAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RevisionModelLinks? links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RevisionModel &&
    other.id == id &&
    other.identifier == identifier &&
    other.formattedIdentifier == formattedIdentifier &&
    other.authorName == authorName &&
    other.message == message &&
    other.createdAt == createdAt &&
    other.links == links;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (identifier.hashCode) +
    (formattedIdentifier.hashCode) +
    (authorName.hashCode) +
    (message.hashCode) +
    (createdAt.hashCode) +
    (links == null ? 0 : links!.hashCode);

  @override
  String toString() => 'RevisionModel[id=$id, identifier=$identifier, formattedIdentifier=$formattedIdentifier, authorName=$authorName, message=$message, createdAt=$createdAt, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'identifier'] = this.identifier;
      json[r'formattedIdentifier'] = this.formattedIdentifier;
      json[r'authorName'] = this.authorName;
      json[r'message'] = this.message;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
    if (this.links != null) {
      json[r'_links'] = this.links;
    } else {
      json[r'_links'] = null;
    }
    return json;
  }

  /// Returns a new [RevisionModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RevisionModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RevisionModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RevisionModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RevisionModel(
        id: mapValueOfType<int>(json, r'id'),
        identifier: mapValueOfType<String>(json, r'identifier')!,
        formattedIdentifier: mapValueOfType<String>(json, r'formattedIdentifier')!,
        authorName: mapValueOfType<String>(json, r'authorName')!,
        message: RevisionModelMessage.fromJson(json[r'message'])!,
        createdAt: mapDateTime(json, r'createdAt', r'')!,
        links: RevisionModelLinks.fromJson(json[r'_links']),
      );
    }
    return null;
  }

  static List<RevisionModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RevisionModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RevisionModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RevisionModel> mapFromJson(dynamic json) {
    final map = <String, RevisionModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RevisionModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RevisionModel-objects as value to a dart map
  static Map<String, List<RevisionModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RevisionModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RevisionModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'identifier',
    'formattedIdentifier',
    'authorName',
    'message',
    'createdAt',
  };
}

