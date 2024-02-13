//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class CustomOptionModel {
  /// Returns a new [CustomOptionModel] instance.
  CustomOptionModel({
    this.id,
    this.value,
    this.links,
  });

  /// The identifier
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  /// The value defined for this custom option
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? value;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CustomOptionModelLinks? links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CustomOptionModel &&
    other.id == id &&
    other.value == value &&
    other.links == links;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (value == null ? 0 : value!.hashCode) +
    (links == null ? 0 : links!.hashCode);

  @override
  String toString() => 'CustomOptionModel[id=$id, value=$value, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
    if (this.links != null) {
      json[r'_links'] = this.links;
    } else {
      json[r'_links'] = null;
    }
    return json;
  }

  /// Returns a new [CustomOptionModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CustomOptionModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CustomOptionModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CustomOptionModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CustomOptionModel(
        id: mapValueOfType<int>(json, r'id'),
        value: mapValueOfType<String>(json, r'value'),
        links: CustomOptionModelLinks.fromJson(json[r'_links']),
      );
    }
    return null;
  }

  static List<CustomOptionModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CustomOptionModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CustomOptionModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CustomOptionModel> mapFromJson(dynamic json) {
    final map = <String, CustomOptionModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CustomOptionModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CustomOptionModel-objects as value to a dart map
  static Map<String, List<CustomOptionModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CustomOptionModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CustomOptionModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

