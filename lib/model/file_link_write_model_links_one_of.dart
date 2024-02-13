//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class FileLinkWriteModelLinksOneOf {
  /// Returns a new [FileLinkWriteModelLinksOneOf] instance.
  FileLinkWriteModelLinksOneOf({
    required this.storage,
  });

  FileLinkReadModelLinksStorage storage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FileLinkWriteModelLinksOneOf &&
    other.storage == storage;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (storage.hashCode);

  @override
  String toString() => 'FileLinkWriteModelLinksOneOf[storage=$storage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'storage'] = this.storage;
    return json;
  }

  /// Returns a new [FileLinkWriteModelLinksOneOf] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FileLinkWriteModelLinksOneOf? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FileLinkWriteModelLinksOneOf[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FileLinkWriteModelLinksOneOf[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FileLinkWriteModelLinksOneOf(
        storage: FileLinkReadModelLinksStorage.fromJson(json[r'storage'])!,
      );
    }
    return null;
  }

  static List<FileLinkWriteModelLinksOneOf> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FileLinkWriteModelLinksOneOf>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FileLinkWriteModelLinksOneOf.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FileLinkWriteModelLinksOneOf> mapFromJson(dynamic json) {
    final map = <String, FileLinkWriteModelLinksOneOf>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FileLinkWriteModelLinksOneOf.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FileLinkWriteModelLinksOneOf-objects as value to a dart map
  static Map<String, List<FileLinkWriteModelLinksOneOf>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FileLinkWriteModelLinksOneOf>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FileLinkWriteModelLinksOneOf.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'storage',
  };
}

