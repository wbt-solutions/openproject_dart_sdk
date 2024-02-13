//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class FileLinkWriteModel {
  /// Returns a new [FileLinkWriteModel] instance.
  FileLinkWriteModel({
    required this.originData,
    required this.links,
  });

  FileLinkOriginDataModel originData;

  FileLinkWriteModelLinks links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FileLinkWriteModel &&
    other.originData == originData &&
    other.links == links;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (originData.hashCode) +
    (links.hashCode);

  @override
  String toString() => 'FileLinkWriteModel[originData=$originData, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'originData'] = this.originData;
      json[r'_links'] = this.links;
    return json;
  }

  /// Returns a new [FileLinkWriteModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FileLinkWriteModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FileLinkWriteModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FileLinkWriteModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FileLinkWriteModel(
        originData: FileLinkOriginDataModel.fromJson(json[r'originData'])!,
        links: FileLinkWriteModelLinks.fromJson(json[r'_links'])!,
      );
    }
    return null;
  }

  static List<FileLinkWriteModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FileLinkWriteModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FileLinkWriteModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FileLinkWriteModel> mapFromJson(dynamic json) {
    final map = <String, FileLinkWriteModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FileLinkWriteModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FileLinkWriteModel-objects as value to a dart map
  static Map<String, List<FileLinkWriteModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FileLinkWriteModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FileLinkWriteModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'originData',
    '_links',
  };
}

