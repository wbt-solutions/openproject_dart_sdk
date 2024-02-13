//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class StorageFileUploadPreparationModel {
  /// Returns a new [StorageFileUploadPreparationModel] instance.
  StorageFileUploadPreparationModel({
    required this.projectId,
    required this.fileName,
    required this.parent,
  });

  /// The project identifier, from where a user starts uploading a file.
  ///
  /// Minimum value: 1
  int projectId;

  /// The file name.
  String fileName;

  /// The directory to which the file is to be uploaded. For root directories, the value `/` must be provided.
  String parent;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StorageFileUploadPreparationModel &&
    other.projectId == projectId &&
    other.fileName == fileName &&
    other.parent == parent;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (projectId.hashCode) +
    (fileName.hashCode) +
    (parent.hashCode);

  @override
  String toString() => 'StorageFileUploadPreparationModel[projectId=$projectId, fileName=$fileName, parent=$parent]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'projectId'] = this.projectId;
      json[r'fileName'] = this.fileName;
      json[r'parent'] = this.parent;
    return json;
  }

  /// Returns a new [StorageFileUploadPreparationModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StorageFileUploadPreparationModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StorageFileUploadPreparationModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StorageFileUploadPreparationModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StorageFileUploadPreparationModel(
        projectId: mapValueOfType<int>(json, r'projectId')!,
        fileName: mapValueOfType<String>(json, r'fileName')!,
        parent: mapValueOfType<String>(json, r'parent')!,
      );
    }
    return null;
  }

  static List<StorageFileUploadPreparationModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StorageFileUploadPreparationModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StorageFileUploadPreparationModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StorageFileUploadPreparationModel> mapFromJson(dynamic json) {
    final map = <String, StorageFileUploadPreparationModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StorageFileUploadPreparationModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StorageFileUploadPreparationModel-objects as value to a dart map
  static Map<String, List<StorageFileUploadPreparationModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StorageFileUploadPreparationModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StorageFileUploadPreparationModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'projectId',
    'fileName',
    'parent',
  };
}

