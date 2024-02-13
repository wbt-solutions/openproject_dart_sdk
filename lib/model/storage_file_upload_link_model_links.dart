//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class StorageFileUploadLinkModelLinks {
  /// Returns a new [StorageFileUploadLinkModelLinks] instance.
  StorageFileUploadLinkModelLinks({
    required this.self,
    required this.destination,
  });

  StorageFileUploadLinkModelLinksSelf self;

  StorageFileUploadLinkModelLinksDestination destination;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StorageFileUploadLinkModelLinks &&
    other.self == self &&
    other.destination == destination;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (self.hashCode) +
    (destination.hashCode);

  @override
  String toString() => 'StorageFileUploadLinkModelLinks[self=$self, destination=$destination]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'self'] = this.self;
      json[r'destination'] = this.destination;
    return json;
  }

  /// Returns a new [StorageFileUploadLinkModelLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StorageFileUploadLinkModelLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StorageFileUploadLinkModelLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StorageFileUploadLinkModelLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StorageFileUploadLinkModelLinks(
        self: StorageFileUploadLinkModelLinksSelf.fromJson(json[r'self'])!,
        destination: StorageFileUploadLinkModelLinksDestination.fromJson(json[r'destination'])!,
      );
    }
    return null;
  }

  static List<StorageFileUploadLinkModelLinks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StorageFileUploadLinkModelLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StorageFileUploadLinkModelLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StorageFileUploadLinkModelLinks> mapFromJson(dynamic json) {
    final map = <String, StorageFileUploadLinkModelLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StorageFileUploadLinkModelLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StorageFileUploadLinkModelLinks-objects as value to a dart map
  static Map<String, List<StorageFileUploadLinkModelLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StorageFileUploadLinkModelLinks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StorageFileUploadLinkModelLinks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'self',
    'destination',
  };
}

