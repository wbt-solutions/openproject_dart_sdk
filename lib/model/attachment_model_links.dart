//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class AttachmentModelLinks {
  /// Returns a new [AttachmentModelLinks] instance.
  AttachmentModelLinks({
    this.delete,
    required this.self,
    required this.container,
    required this.author,
    required this.downloadLocation,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AttachmentModelLinksDelete? delete;

  AttachmentModelLinksSelf self;

  AttachmentModelLinksContainer container;

  AttachmentModelLinksAuthor author;

  AttachmentModelLinksDownloadLocation downloadLocation;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AttachmentModelLinks &&
    other.delete == delete &&
    other.self == self &&
    other.container == container &&
    other.author == author &&
    other.downloadLocation == downloadLocation;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (delete == null ? 0 : delete!.hashCode) +
    (self.hashCode) +
    (container.hashCode) +
    (author.hashCode) +
    (downloadLocation.hashCode);

  @override
  String toString() => 'AttachmentModelLinks[delete=$delete, self=$self, container=$container, author=$author, downloadLocation=$downloadLocation]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.delete != null) {
      json[r'delete'] = this.delete;
    } else {
      json[r'delete'] = null;
    }
      json[r'self'] = this.self;
      json[r'container'] = this.container;
      json[r'author'] = this.author;
      json[r'downloadLocation'] = this.downloadLocation;
    return json;
  }

  /// Returns a new [AttachmentModelLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AttachmentModelLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AttachmentModelLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AttachmentModelLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AttachmentModelLinks(
        delete: AttachmentModelLinksDelete.fromJson(json[r'delete']),
        self: AttachmentModelLinksSelf.fromJson(json[r'self'])!,
        container: AttachmentModelLinksContainer.fromJson(json[r'container'])!,
        author: AttachmentModelLinksAuthor.fromJson(json[r'author'])!,
        downloadLocation: AttachmentModelLinksDownloadLocation.fromJson(json[r'downloadLocation'])!,
      );
    }
    return null;
  }

  static List<AttachmentModelLinks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AttachmentModelLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AttachmentModelLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AttachmentModelLinks> mapFromJson(dynamic json) {
    final map = <String, AttachmentModelLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AttachmentModelLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AttachmentModelLinks-objects as value to a dart map
  static Map<String, List<AttachmentModelLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AttachmentModelLinks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AttachmentModelLinks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'self',
    'container',
    'author',
    'downloadLocation',
  };
}

