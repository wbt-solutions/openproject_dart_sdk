//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class QueryColumnModel {
  /// Returns a new [QueryColumnModel] instance.
  QueryColumnModel({
    required this.id,
    required this.name,
  });

  /// Query column id
  String id;

  /// Query column name
  String name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is QueryColumnModel &&
    other.id == id &&
    other.name == name;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name.hashCode);

  @override
  String toString() => 'QueryColumnModel[id=$id, name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'name'] = this.name;
    return json;
  }

  /// Returns a new [QueryColumnModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static QueryColumnModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "QueryColumnModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "QueryColumnModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return QueryColumnModel(
        id: mapValueOfType<String>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
      );
    }
    return null;
  }

  static List<QueryColumnModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <QueryColumnModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = QueryColumnModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, QueryColumnModel> mapFromJson(dynamic json) {
    final map = <String, QueryColumnModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = QueryColumnModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of QueryColumnModel-objects as value to a dart map
  static Map<String, List<QueryColumnModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<QueryColumnModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = QueryColumnModel.listFromJson(entry.value, growable: growable,);
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

