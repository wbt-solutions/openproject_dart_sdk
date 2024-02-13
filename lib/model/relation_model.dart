//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class RelationModel {
  /// Returns a new [RelationModel] instance.
  RelationModel({
    this.id,
    this.name,
    this.type,
    this.reverseType,
    this.description,
    this.delayStar,
    this.links,
  });

  /// Relation ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  /// The internationalized name of this kind of relation
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Which kind of relation (blocks, precedes, etc.)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  /// The kind of relation from the other WP's perspective
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reverseType;

  /// Short text further describing the relation
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// The delay in days between closing of `from` and start of `to`
  ///
  /// Minimum value: 0
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? delayStar;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RelationModelLinks? links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RelationModel &&
    other.id == id &&
    other.name == name &&
    other.type == type &&
    other.reverseType == reverseType &&
    other.description == description &&
    other.delayStar == delayStar &&
    other.links == links;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (reverseType == null ? 0 : reverseType!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (delayStar == null ? 0 : delayStar!.hashCode) +
    (links == null ? 0 : links!.hashCode);

  @override
  String toString() => 'RelationModel[id=$id, name=$name, type=$type, reverseType=$reverseType, description=$description, delayStar=$delayStar, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.reverseType != null) {
      json[r'reverseType'] = this.reverseType;
    } else {
      json[r'reverseType'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.delayStar != null) {
      json[r'delay*'] = this.delayStar;
    } else {
      json[r'delay*'] = null;
    }
    if (this.links != null) {
      json[r'_links'] = this.links;
    } else {
      json[r'_links'] = null;
    }
    return json;
  }

  /// Returns a new [RelationModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RelationModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RelationModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RelationModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RelationModel(
        id: mapValueOfType<int>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        type: mapValueOfType<String>(json, r'type'),
        reverseType: mapValueOfType<String>(json, r'reverseType'),
        description: mapValueOfType<String>(json, r'description'),
        delayStar: mapValueOfType<int>(json, r'delay*'),
        links: RelationModelLinks.fromJson(json[r'_links']),
      );
    }
    return null;
  }

  static List<RelationModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RelationModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RelationModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RelationModel> mapFromJson(dynamic json) {
    final map = <String, RelationModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RelationModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RelationModel-objects as value to a dart map
  static Map<String, List<RelationModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RelationModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RelationModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

