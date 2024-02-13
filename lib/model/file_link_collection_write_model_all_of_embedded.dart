//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class FileLinkCollectionWriteModelAllOfEmbedded {
  /// Returns a new [FileLinkCollectionWriteModelAllOfEmbedded] instance.
  FileLinkCollectionWriteModelAllOfEmbedded({
    this.elements = const [],
  });

  List<FileLinkWriteModel> elements;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FileLinkCollectionWriteModelAllOfEmbedded &&
    _deepEquality.equals(other.elements, elements);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (elements.hashCode);

  @override
  String toString() => 'FileLinkCollectionWriteModelAllOfEmbedded[elements=$elements]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'elements'] = this.elements;
    return json;
  }

  /// Returns a new [FileLinkCollectionWriteModelAllOfEmbedded] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FileLinkCollectionWriteModelAllOfEmbedded? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FileLinkCollectionWriteModelAllOfEmbedded[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FileLinkCollectionWriteModelAllOfEmbedded[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FileLinkCollectionWriteModelAllOfEmbedded(
        elements: FileLinkWriteModel.listFromJson(json[r'elements']),
      );
    }
    return null;
  }

  static List<FileLinkCollectionWriteModelAllOfEmbedded> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FileLinkCollectionWriteModelAllOfEmbedded>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FileLinkCollectionWriteModelAllOfEmbedded.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FileLinkCollectionWriteModelAllOfEmbedded> mapFromJson(dynamic json) {
    final map = <String, FileLinkCollectionWriteModelAllOfEmbedded>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FileLinkCollectionWriteModelAllOfEmbedded.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FileLinkCollectionWriteModelAllOfEmbedded-objects as value to a dart map
  static Map<String, List<FileLinkCollectionWriteModelAllOfEmbedded>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FileLinkCollectionWriteModelAllOfEmbedded>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FileLinkCollectionWriteModelAllOfEmbedded.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'elements',
  };
}

