//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class SchemaPropertyModel {
  /// Returns a new [SchemaPropertyModel] instance.
  SchemaPropertyModel({
    required this.type,
    required this.name,
    required this.required_,
    required this.hasDefault,
    required this.writable,
    this.object,
    this.location = '',
    this.links,
  });

  /// The resource type for this property.
  String type;

  /// The name of the property.
  String name;

  /// Indicates, if the property is required for submitting a request of this schema.
  bool required_;

  /// Indicates, if the property has a default.
  bool hasDefault;

  /// Indicates, if the property is writable when sending a request of this schema.
  bool writable;

  /// Additional options for the property.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? object;

  /// Defines the json path where the property is located in the payload.
  String location;

  /// Useful links for this property (e.g. an endpoint to fetch allowed values)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SchemaPropertyModel &&
    other.type == type &&
    other.name == name &&
    other.required_ == required_ &&
    other.hasDefault == hasDefault &&
    other.writable == writable &&
    other.object == object &&
    other.location == location &&
    other.links == links;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (name.hashCode) +
    (required_.hashCode) +
    (hasDefault.hashCode) +
    (writable.hashCode) +
    (object == null ? 0 : object!.hashCode) +
    (location.hashCode) +
    (links == null ? 0 : links!.hashCode);

  @override
  String toString() => 'SchemaPropertyModel[type=$type, name=$name, required_=$required_, hasDefault=$hasDefault, writable=$writable, object=$object, location=$location, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'type'] = this.type;
      json[r'name'] = this.name;
      json[r'required'] = this.required_;
      json[r'hasDefault'] = this.hasDefault;
      json[r'writable'] = this.writable;
    if (this.object != null) {
      json[r'object'] = this.object;
    } else {
      json[r'object'] = null;
    }
      json[r'location'] = this.location;
    if (this.links != null) {
      json[r'_links'] = this.links;
    } else {
      json[r'_links'] = null;
    }
    return json;
  }

  /// Returns a new [SchemaPropertyModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SchemaPropertyModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SchemaPropertyModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SchemaPropertyModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SchemaPropertyModel(
        type: mapValueOfType<String>(json, r'type')!,
        name: mapValueOfType<String>(json, r'name')!,
        required_: mapValueOfType<bool>(json, r'required')!,
        hasDefault: mapValueOfType<bool>(json, r'hasDefault')!,
        writable: mapValueOfType<bool>(json, r'writable')!,
        object: mapValueOfType<Object>(json, r'object'),
        location: mapValueOfType<String>(json, r'location') ?? '',
        links: mapValueOfType<Object>(json, r'_links'),
      );
    }
    return null;
  }

  static List<SchemaPropertyModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SchemaPropertyModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SchemaPropertyModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SchemaPropertyModel> mapFromJson(dynamic json) {
    final map = <String, SchemaPropertyModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SchemaPropertyModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SchemaPropertyModel-objects as value to a dart map
  static Map<String, List<SchemaPropertyModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SchemaPropertyModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SchemaPropertyModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'type',
    'name',
    'required',
    'hasDefault',
    'writable',
  };
}

