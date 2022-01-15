//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class Configuration {
  /// Returns a new [Configuration] instance.
  Configuration({
    this.maximumAttachmentFileSize,
    this.perPageOptions = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maximumAttachmentFileSize;

  List<int> perPageOptions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Configuration &&
     other.maximumAttachmentFileSize == maximumAttachmentFileSize &&
     other.perPageOptions == perPageOptions;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (maximumAttachmentFileSize == null ? 0 : maximumAttachmentFileSize!.hashCode) +
    (perPageOptions.hashCode);

  @override
  String toString() => 'Configuration[maximumAttachmentFileSize=$maximumAttachmentFileSize, perPageOptions=$perPageOptions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (maximumAttachmentFileSize != null) {
      json[r'maximumAttachmentFileSize'] = maximumAttachmentFileSize;
    }
      json[r'perPageOptions'] = perPageOptions;
    return json;
  }

  /// Returns a new [Configuration] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Configuration? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Configuration[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Configuration[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Configuration(
        maximumAttachmentFileSize: mapValueOfType<int>(json, r'maximumAttachmentFileSize'),
        perPageOptions: json[r'perPageOptions'] is List
            ? (json[r'perPageOptions'] as List).cast<int>()
            : const [],
      );
    }
    return null;
  }

  static List<Configuration>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Configuration>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Configuration.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Configuration> mapFromJson(dynamic json) {
    final map = <String, Configuration>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Configuration.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Configuration-objects as value to a dart map
  static Map<String, List<Configuration>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Configuration>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Configuration.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

