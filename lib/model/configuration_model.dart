//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class ConfigurationModel {
  /// Returns a new [ConfigurationModel] instance.
  ConfigurationModel({
    this.maximumAttachmentFileSize,
    this.hostName,
    this.perPageOptions = const [],
    this.activeFeatureFlags = const [],
  });

  /// The maximum allowed size of an attachment in Bytes
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maximumAttachmentFileSize;

  /// The host name configured for the system
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? hostName;

  /// Page size steps to be offered in paginated list UI
  List<int> perPageOptions;

  /// The list of all feature flags that are active
  List<String> activeFeatureFlags;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ConfigurationModel &&
    other.maximumAttachmentFileSize == maximumAttachmentFileSize &&
    other.hostName == hostName &&
    _deepEquality.equals(other.perPageOptions, perPageOptions) &&
    _deepEquality.equals(other.activeFeatureFlags, activeFeatureFlags);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (maximumAttachmentFileSize == null ? 0 : maximumAttachmentFileSize!.hashCode) +
    (hostName == null ? 0 : hostName!.hashCode) +
    (perPageOptions.hashCode) +
    (activeFeatureFlags.hashCode);

  @override
  String toString() => 'ConfigurationModel[maximumAttachmentFileSize=$maximumAttachmentFileSize, hostName=$hostName, perPageOptions=$perPageOptions, activeFeatureFlags=$activeFeatureFlags]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.maximumAttachmentFileSize != null) {
      json[r'maximumAttachmentFileSize'] = this.maximumAttachmentFileSize;
    } else {
      json[r'maximumAttachmentFileSize'] = null;
    }
    if (this.hostName != null) {
      json[r'hostName'] = this.hostName;
    } else {
      json[r'hostName'] = null;
    }
      json[r'perPageOptions'] = this.perPageOptions;
      json[r'activeFeatureFlags'] = this.activeFeatureFlags;
    return json;
  }

  /// Returns a new [ConfigurationModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ConfigurationModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ConfigurationModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ConfigurationModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ConfigurationModel(
        maximumAttachmentFileSize: mapValueOfType<int>(json, r'maximumAttachmentFileSize'),
        hostName: mapValueOfType<String>(json, r'hostName'),
        perPageOptions: json[r'perPageOptions'] is Iterable
            ? (json[r'perPageOptions'] as Iterable).cast<int>().toList(growable: false)
            : const [],
        activeFeatureFlags: json[r'activeFeatureFlags'] is Iterable
            ? (json[r'activeFeatureFlags'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<ConfigurationModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ConfigurationModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ConfigurationModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ConfigurationModel> mapFromJson(dynamic json) {
    final map = <String, ConfigurationModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ConfigurationModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ConfigurationModel-objects as value to a dart map
  static Map<String, List<ConfigurationModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ConfigurationModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ConfigurationModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

