//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class AttachmentModel {
  /// Returns a new [AttachmentModel] instance.
  AttachmentModel({
    this.id,
    required this.title,
    required this.fileName,
    this.fileSize,
    required this.description,
    required this.contentType,
    required this.digest,
    required this.createdAt,
    this.links,
  });

  /// Attachment's id
  ///
  /// Minimum value: 1
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  /// The name of the file
  String title;

  /// The name of the uploaded file
  String fileName;

  /// The size of the uploaded file in Bytes
  ///
  /// Minimum value: 0
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? fileSize;

  AttachmentModelDescription description;

  /// The files MIME-Type as determined by the server
  String contentType;

  /// A checksum for the files content
  String digest;

  /// Time of creation
  DateTime createdAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AttachmentModelLinks? links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AttachmentModel &&
    other.id == id &&
    other.title == title &&
    other.fileName == fileName &&
    other.fileSize == fileSize &&
    other.description == description &&
    other.contentType == contentType &&
    other.digest == digest &&
    other.createdAt == createdAt &&
    other.links == links;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (title.hashCode) +
    (fileName.hashCode) +
    (fileSize == null ? 0 : fileSize!.hashCode) +
    (description.hashCode) +
    (contentType.hashCode) +
    (digest.hashCode) +
    (createdAt.hashCode) +
    (links == null ? 0 : links!.hashCode);

  @override
  String toString() => 'AttachmentModel[id=$id, title=$title, fileName=$fileName, fileSize=$fileSize, description=$description, contentType=$contentType, digest=$digest, createdAt=$createdAt, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'title'] = this.title;
      json[r'fileName'] = this.fileName;
    if (this.fileSize != null) {
      json[r'fileSize'] = this.fileSize;
    } else {
      json[r'fileSize'] = null;
    }
      json[r'description'] = this.description;
      json[r'contentType'] = this.contentType;
      json[r'digest'] = this.digest;
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
    if (this.links != null) {
      json[r'_links'] = this.links;
    } else {
      json[r'_links'] = null;
    }
    return json;
  }

  /// Returns a new [AttachmentModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AttachmentModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AttachmentModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AttachmentModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AttachmentModel(
        id: mapValueOfType<int>(json, r'id'),
        title: mapValueOfType<String>(json, r'title')!,
        fileName: mapValueOfType<String>(json, r'fileName')!,
        fileSize: mapValueOfType<int>(json, r'fileSize'),
        description: AttachmentModelDescription.fromJson(json[r'description'])!,
        contentType: mapValueOfType<String>(json, r'contentType')!,
        digest: mapValueOfType<String>(json, r'digest')!,
        createdAt: mapDateTime(json, r'createdAt', r'')!,
        links: AttachmentModelLinks.fromJson(json[r'_links']),
      );
    }
    return null;
  }

  static List<AttachmentModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AttachmentModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AttachmentModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AttachmentModel> mapFromJson(dynamic json) {
    final map = <String, AttachmentModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AttachmentModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AttachmentModel-objects as value to a dart map
  static Map<String, List<AttachmentModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AttachmentModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AttachmentModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'title',
    'fileName',
    'description',
    'contentType',
    'digest',
    'createdAt',
  };
}

