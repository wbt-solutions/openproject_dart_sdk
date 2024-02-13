//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class FileLinkReadModelLinks {
  /// Returns a new [FileLinkReadModelLinks] instance.
  FileLinkReadModelLinks({
    required this.self,
    required this.storage,
    required this.container,
    required this.creator,
    this.delete,
    this.status,
    required this.originOpen,
    required this.staticOriginOpen,
    required this.originOpenLocation,
    required this.staticOriginOpenLocation,
    required this.staticOriginDownload,
  });

  FileLinkReadModelLinksSelf self;

  FileLinkReadModelLinksStorage storage;

  FileLinkReadModelLinksContainer container;

  FileLinkReadModelLinksCreator creator;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  FileLinkReadModelLinksDelete? delete;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  FileLinkReadModelLinksStatus? status;

  FileLinkReadModelLinksOriginOpen originOpen;

  FileLinkReadModelLinksStaticOriginOpen staticOriginOpen;

  FileLinkReadModelLinksOriginOpenLocation originOpenLocation;

  FileLinkReadModelLinksStaticOriginOpenLocation staticOriginOpenLocation;

  FileLinkReadModelLinksStaticOriginDownload staticOriginDownload;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FileLinkReadModelLinks &&
    other.self == self &&
    other.storage == storage &&
    other.container == container &&
    other.creator == creator &&
    other.delete == delete &&
    other.status == status &&
    other.originOpen == originOpen &&
    other.staticOriginOpen == staticOriginOpen &&
    other.originOpenLocation == originOpenLocation &&
    other.staticOriginOpenLocation == staticOriginOpenLocation &&
    other.staticOriginDownload == staticOriginDownload;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (self.hashCode) +
    (storage.hashCode) +
    (container.hashCode) +
    (creator.hashCode) +
    (delete == null ? 0 : delete!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (originOpen.hashCode) +
    (staticOriginOpen.hashCode) +
    (originOpenLocation.hashCode) +
    (staticOriginOpenLocation.hashCode) +
    (staticOriginDownload.hashCode);

  @override
  String toString() => 'FileLinkReadModelLinks[self=$self, storage=$storage, container=$container, creator=$creator, delete=$delete, status=$status, originOpen=$originOpen, staticOriginOpen=$staticOriginOpen, originOpenLocation=$originOpenLocation, staticOriginOpenLocation=$staticOriginOpenLocation, staticOriginDownload=$staticOriginDownload]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'self'] = this.self;
      json[r'storage'] = this.storage;
      json[r'container'] = this.container;
      json[r'creator'] = this.creator;
    if (this.delete != null) {
      json[r'delete'] = this.delete;
    } else {
      json[r'delete'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
      json[r'originOpen'] = this.originOpen;
      json[r'staticOriginOpen'] = this.staticOriginOpen;
      json[r'originOpenLocation'] = this.originOpenLocation;
      json[r'staticOriginOpenLocation'] = this.staticOriginOpenLocation;
      json[r'staticOriginDownload'] = this.staticOriginDownload;
    return json;
  }

  /// Returns a new [FileLinkReadModelLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FileLinkReadModelLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FileLinkReadModelLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FileLinkReadModelLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FileLinkReadModelLinks(
        self: FileLinkReadModelLinksSelf.fromJson(json[r'self'])!,
        storage: FileLinkReadModelLinksStorage.fromJson(json[r'storage'])!,
        container: FileLinkReadModelLinksContainer.fromJson(json[r'container'])!,
        creator: FileLinkReadModelLinksCreator.fromJson(json[r'creator'])!,
        delete: FileLinkReadModelLinksDelete.fromJson(json[r'delete']),
        status: FileLinkReadModelLinksStatus.fromJson(json[r'status']),
        originOpen: FileLinkReadModelLinksOriginOpen.fromJson(json[r'originOpen'])!,
        staticOriginOpen: FileLinkReadModelLinksStaticOriginOpen.fromJson(json[r'staticOriginOpen'])!,
        originOpenLocation: FileLinkReadModelLinksOriginOpenLocation.fromJson(json[r'originOpenLocation'])!,
        staticOriginOpenLocation: FileLinkReadModelLinksStaticOriginOpenLocation.fromJson(json[r'staticOriginOpenLocation'])!,
        staticOriginDownload: FileLinkReadModelLinksStaticOriginDownload.fromJson(json[r'staticOriginDownload'])!,
      );
    }
    return null;
  }

  static List<FileLinkReadModelLinks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FileLinkReadModelLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FileLinkReadModelLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FileLinkReadModelLinks> mapFromJson(dynamic json) {
    final map = <String, FileLinkReadModelLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FileLinkReadModelLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FileLinkReadModelLinks-objects as value to a dart map
  static Map<String, List<FileLinkReadModelLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FileLinkReadModelLinks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FileLinkReadModelLinks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'self',
    'storage',
    'container',
    'creator',
    'originOpen',
    'staticOriginOpen',
    'originOpenLocation',
    'staticOriginOpenLocation',
    'staticOriginDownload',
  };
}

