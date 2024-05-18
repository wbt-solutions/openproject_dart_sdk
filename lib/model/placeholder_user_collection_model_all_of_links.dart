//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class PlaceholderUserCollectionModelAllOfLinks {
  /// Returns a new [PlaceholderUserCollectionModelAllOfLinks] instance.
  PlaceholderUserCollectionModelAllOfLinks({
    required this.self,
  });

  PlaceholderUserCollectionModelAllOfLinksSelf self;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PlaceholderUserCollectionModelAllOfLinks &&
    other.self == self;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (self.hashCode);

  @override
  String toString() => 'PlaceholderUserCollectionModelAllOfLinks[self=$self]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'self'] = this.self;
    return json;
  }

  /// Returns a new [PlaceholderUserCollectionModelAllOfLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PlaceholderUserCollectionModelAllOfLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PlaceholderUserCollectionModelAllOfLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PlaceholderUserCollectionModelAllOfLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PlaceholderUserCollectionModelAllOfLinks(
        self: PlaceholderUserCollectionModelAllOfLinksSelf.fromJson(json[r'self'])!,
      );
    }
    return null;
  }

  static List<PlaceholderUserCollectionModelAllOfLinks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PlaceholderUserCollectionModelAllOfLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PlaceholderUserCollectionModelAllOfLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PlaceholderUserCollectionModelAllOfLinks> mapFromJson(dynamic json) {
    final map = <String, PlaceholderUserCollectionModelAllOfLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PlaceholderUserCollectionModelAllOfLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PlaceholderUserCollectionModelAllOfLinks-objects as value to a dart map
  static Map<String, List<PlaceholderUserCollectionModelAllOfLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PlaceholderUserCollectionModelAllOfLinks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PlaceholderUserCollectionModelAllOfLinks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'self',
  };
}

