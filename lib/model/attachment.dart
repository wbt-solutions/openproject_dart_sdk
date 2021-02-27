//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class Attachment {
  /// Returns a new [Attachment] instance.
  Attachment({
    this.id,
    this.title,
    this.fileName,
    this.fileSize,
    this.description,
    this.contentType,
    this.digest,
    this.createdAt,
  });

  int id;

  String title;

  String fileName;

  int fileSize;

  Description description;

  String contentType;

  Digest digest;

  DateTime createdAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Attachment &&
     other.id == id &&
     other.title == title &&
     other.fileName == fileName &&
     other.fileSize == fileSize &&
     other.description == description &&
     other.contentType == contentType &&
     other.digest == digest &&
     other.createdAt == createdAt;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (title == null ? 0 : title.hashCode) +
    (fileName == null ? 0 : fileName.hashCode) +
    (fileSize == null ? 0 : fileSize.hashCode) +
    (description == null ? 0 : description.hashCode) +
    (contentType == null ? 0 : contentType.hashCode) +
    (digest == null ? 0 : digest.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode);

  @override
  String toString() => 'Attachment[id=$id, title=$title, fileName=$fileName, fileSize=$fileSize, description=$description, contentType=$contentType, digest=$digest, createdAt=$createdAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (title != null) {
      json[r'title'] = title;
    }
    if (fileName != null) {
      json[r'fileName'] = fileName;
    }
    if (fileSize != null) {
      json[r'fileSize'] = fileSize;
    }
    if (description != null) {
      json[r'description'] = description;
    }
    if (contentType != null) {
      json[r'contentType'] = contentType;
    }
    if (digest != null) {
      json[r'digest'] = digest;
    }
    if (createdAt != null) {
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
    }
    return json;
  }

  /// Returns a new [Attachment] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Attachment fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Attachment(
        id: json[r'id'],
        title: json[r'title'],
        fileName: json[r'fileName'],
        fileSize: json[r'fileSize'],
        description: Description.fromJson(json[r'description']),
        contentType: json[r'contentType'],
        digest: Digest.fromJson(json[r'digest']),
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
    );

  static List<Attachment> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Attachment>[]
      : json.map((v) => Attachment.fromJson(v)).toList(growable: true == growable);

  static Map<String, Attachment> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Attachment>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = Attachment.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of Attachment-objects as value to a dart map
  static Map<String, List<Attachment>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Attachment>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = Attachment.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

