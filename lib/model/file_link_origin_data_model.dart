//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class FileLinkOriginDataModel {
  /// Returns a new [FileLinkOriginDataModel] instance.
  FileLinkOriginDataModel({
    required this.id,
    required this.name,
    this.mimeType,
    this.size,
    this.createdAt,
    this.lastModifiedAt,
    this.createdByName,
    this.lastModifiedByName,
  });

  /// Linked file's id on the origin
  String id;

  /// Linked file's name on the origin
  String name;

  /// MIME type of the linked file.  To link a folder entity, the custom MIME type `application/x-op-directory` MUST be provided. Otherwise it defaults back to an unknown MIME type.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mimeType;

  /// file size on origin in bytes
  ///
  /// Minimum value: 0
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? size;

  /// Timestamp of the creation datetime of the file on the origin
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  /// Timestamp of the datetime of the last modification of the file on the origin
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? lastModifiedAt;

  /// Display name of the author that created the file on the origin
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdByName;

  /// Display name of the author that modified the file on the origin last
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastModifiedByName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FileLinkOriginDataModel &&
    other.id == id &&
    other.name == name &&
    other.mimeType == mimeType &&
    other.size == size &&
    other.createdAt == createdAt &&
    other.lastModifiedAt == lastModifiedAt &&
    other.createdByName == createdByName &&
    other.lastModifiedByName == lastModifiedByName;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name.hashCode) +
    (mimeType == null ? 0 : mimeType!.hashCode) +
    (size == null ? 0 : size!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (lastModifiedAt == null ? 0 : lastModifiedAt!.hashCode) +
    (createdByName == null ? 0 : createdByName!.hashCode) +
    (lastModifiedByName == null ? 0 : lastModifiedByName!.hashCode);

  @override
  String toString() => 'FileLinkOriginDataModel[id=$id, name=$name, mimeType=$mimeType, size=$size, createdAt=$createdAt, lastModifiedAt=$lastModifiedAt, createdByName=$createdByName, lastModifiedByName=$lastModifiedByName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'name'] = this.name;
    if (this.mimeType != null) {
      json[r'mimeType'] = this.mimeType;
    } else {
      json[r'mimeType'] = null;
    }
    if (this.size != null) {
      json[r'size'] = this.size;
    } else {
      json[r'size'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'createdAt'] = null;
    }
    if (this.lastModifiedAt != null) {
      json[r'lastModifiedAt'] = this.lastModifiedAt!.toUtc().toIso8601String();
    } else {
      json[r'lastModifiedAt'] = null;
    }
    if (this.createdByName != null) {
      json[r'createdByName'] = this.createdByName;
    } else {
      json[r'createdByName'] = null;
    }
    if (this.lastModifiedByName != null) {
      json[r'lastModifiedByName'] = this.lastModifiedByName;
    } else {
      json[r'lastModifiedByName'] = null;
    }
    return json;
  }

  /// Returns a new [FileLinkOriginDataModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FileLinkOriginDataModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FileLinkOriginDataModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FileLinkOriginDataModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FileLinkOriginDataModel(
        id: mapValueOfType<String>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        mimeType: mapValueOfType<String>(json, r'mimeType'),
        size: mapValueOfType<int>(json, r'size'),
        createdAt: mapDateTime(json, r'createdAt', r''),
        lastModifiedAt: mapDateTime(json, r'lastModifiedAt', r''),
        createdByName: mapValueOfType<String>(json, r'createdByName'),
        lastModifiedByName: mapValueOfType<String>(json, r'lastModifiedByName'),
      );
    }
    return null;
  }

  static List<FileLinkOriginDataModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FileLinkOriginDataModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FileLinkOriginDataModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FileLinkOriginDataModel> mapFromJson(dynamic json) {
    final map = <String, FileLinkOriginDataModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FileLinkOriginDataModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FileLinkOriginDataModel-objects as value to a dart map
  static Map<String, List<FileLinkOriginDataModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FileLinkOriginDataModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FileLinkOriginDataModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'name',
  };
}

