//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class StorageWriteModel {
  /// Returns a new [StorageWriteModel] instance.
  StorageWriteModel({
    this.name,
    this.applicationPassword,
    this.links,
  });

  /// Storage name, if not provided, falls back to a default.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// The application password to use for the Nextcloud storage. Ignored if the provider type is not Nextcloud.  If a string is provided, the password is set and automatic management is enabled for the storage. If null is provided, the password is unset and automatic management is disabled for the storage.
  Object? applicationPassword;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  StorageWriteModelLinks? links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StorageWriteModel &&
    other.name == name &&
    other.applicationPassword == applicationPassword &&
    other.links == links;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (applicationPassword == null ? 0 : applicationPassword!.hashCode) +
    (links == null ? 0 : links!.hashCode);

  @override
  String toString() => 'StorageWriteModel[name=$name, applicationPassword=$applicationPassword, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.applicationPassword != null) {
      json[r'applicationPassword'] = this.applicationPassword;
    } else {
      json[r'applicationPassword'] = null;
    }
    if (this.links != null) {
      json[r'_links'] = this.links;
    } else {
      json[r'_links'] = null;
    }
    return json;
  }

  /// Returns a new [StorageWriteModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StorageWriteModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StorageWriteModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StorageWriteModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StorageWriteModel(
        name: mapValueOfType<String>(json, r'name'),
        applicationPassword: mapValueOfType<Object>(json, r'applicationPassword'),
        links: StorageWriteModelLinks.fromJson(json[r'_links']),
      );
    }
    return null;
  }

  static List<StorageWriteModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StorageWriteModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StorageWriteModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StorageWriteModel> mapFromJson(dynamic json) {
    final map = <String, StorageWriteModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StorageWriteModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StorageWriteModel-objects as value to a dart map
  static Map<String, List<StorageWriteModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StorageWriteModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StorageWriteModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

