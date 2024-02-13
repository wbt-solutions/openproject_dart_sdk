//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class QueryFilterInstanceSchemaModel {
  /// Returns a new [QueryFilterInstanceSchemaModel] instance.
  QueryFilterInstanceSchemaModel({
    required this.name,
    required this.filter,
    this.links,
  });

  /// Describes the name attribute
  String name;

  /// QuerySortBy name
  String filter;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  QueryFilterInstanceSchemaModelLinks? links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is QueryFilterInstanceSchemaModel &&
    other.name == name &&
    other.filter == filter &&
    other.links == links;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (filter.hashCode) +
    (links == null ? 0 : links!.hashCode);

  @override
  String toString() => 'QueryFilterInstanceSchemaModel[name=$name, filter=$filter, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'filter'] = this.filter;
    if (this.links != null) {
      json[r'_links'] = this.links;
    } else {
      json[r'_links'] = null;
    }
    return json;
  }

  /// Returns a new [QueryFilterInstanceSchemaModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static QueryFilterInstanceSchemaModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "QueryFilterInstanceSchemaModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "QueryFilterInstanceSchemaModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return QueryFilterInstanceSchemaModel(
        name: mapValueOfType<String>(json, r'name')!,
        filter: mapValueOfType<String>(json, r'filter')!,
        links: QueryFilterInstanceSchemaModelLinks.fromJson(json[r'_links']),
      );
    }
    return null;
  }

  static List<QueryFilterInstanceSchemaModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <QueryFilterInstanceSchemaModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = QueryFilterInstanceSchemaModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, QueryFilterInstanceSchemaModel> mapFromJson(dynamic json) {
    final map = <String, QueryFilterInstanceSchemaModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = QueryFilterInstanceSchemaModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of QueryFilterInstanceSchemaModel-objects as value to a dart map
  static Map<String, List<QueryFilterInstanceSchemaModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<QueryFilterInstanceSchemaModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = QueryFilterInstanceSchemaModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'filter',
  };
}

