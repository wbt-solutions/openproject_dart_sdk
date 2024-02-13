//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class QueryOperatorModel {
  /// Returns a new [QueryOperatorModel] instance.
  QueryOperatorModel({
    required this.id,
    required this.name,
  });

  /// Query operator id
  String id;

  /// Query operator name
  String name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is QueryOperatorModel &&
    other.id == id &&
    other.name == name;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (name.hashCode);

  @override
  String toString() => 'QueryOperatorModel[id=$id, name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'name'] = this.name;
    return json;
  }

  /// Returns a new [QueryOperatorModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static QueryOperatorModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "QueryOperatorModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "QueryOperatorModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return QueryOperatorModel(
        id: mapValueOfType<String>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
      );
    }
    return null;
  }

  static List<QueryOperatorModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <QueryOperatorModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = QueryOperatorModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, QueryOperatorModel> mapFromJson(dynamic json) {
    final map = <String, QueryOperatorModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = QueryOperatorModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of QueryOperatorModel-objects as value to a dart map
  static Map<String, List<QueryOperatorModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<QueryOperatorModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = QueryOperatorModel.listFromJson(entry.value, growable: growable,);
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

