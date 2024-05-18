//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class CategoriesByProjectModelAllOfEmbedded {
  /// Returns a new [CategoriesByProjectModelAllOfEmbedded] instance.
  CategoriesByProjectModelAllOfEmbedded({
    this.elements = const [],
  });

  List<CategoriesByProjectModelAllOfEmbeddedElements> elements;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CategoriesByProjectModelAllOfEmbedded &&
    _deepEquality.equals(other.elements, elements);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (elements.hashCode);

  @override
  String toString() => 'CategoriesByProjectModelAllOfEmbedded[elements=$elements]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'elements'] = this.elements;
    return json;
  }

  /// Returns a new [CategoriesByProjectModelAllOfEmbedded] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CategoriesByProjectModelAllOfEmbedded? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CategoriesByProjectModelAllOfEmbedded[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CategoriesByProjectModelAllOfEmbedded[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CategoriesByProjectModelAllOfEmbedded(
        elements: CategoriesByProjectModelAllOfEmbeddedElements.listFromJson(json[r'elements']),
      );
    }
    return null;
  }

  static List<CategoriesByProjectModelAllOfEmbedded> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CategoriesByProjectModelAllOfEmbedded>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CategoriesByProjectModelAllOfEmbedded.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CategoriesByProjectModelAllOfEmbedded> mapFromJson(dynamic json) {
    final map = <String, CategoriesByProjectModelAllOfEmbedded>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CategoriesByProjectModelAllOfEmbedded.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CategoriesByProjectModelAllOfEmbedded-objects as value to a dart map
  static Map<String, List<CategoriesByProjectModelAllOfEmbedded>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CategoriesByProjectModelAllOfEmbedded>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CategoriesByProjectModelAllOfEmbedded.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

