//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class NotificationCollectionModelAllOfLinks {
  /// Returns a new [NotificationCollectionModelAllOfLinks] instance.
  NotificationCollectionModelAllOfLinks({
    required this.self,
    this.jumpTo,
    this.changeSize,
  });

  NotificationCollectionModelAllOfLinksSelf self;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  NotificationCollectionModelAllOfLinksJumpTo? jumpTo;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  NotificationCollectionModelAllOfLinksChangeSize? changeSize;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NotificationCollectionModelAllOfLinks &&
    other.self == self &&
    other.jumpTo == jumpTo &&
    other.changeSize == changeSize;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (self.hashCode) +
    (jumpTo == null ? 0 : jumpTo!.hashCode) +
    (changeSize == null ? 0 : changeSize!.hashCode);

  @override
  String toString() => 'NotificationCollectionModelAllOfLinks[self=$self, jumpTo=$jumpTo, changeSize=$changeSize]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'self'] = this.self;
    if (this.jumpTo != null) {
      json[r'jumpTo'] = this.jumpTo;
    } else {
      json[r'jumpTo'] = null;
    }
    if (this.changeSize != null) {
      json[r'changeSize'] = this.changeSize;
    } else {
      json[r'changeSize'] = null;
    }
    return json;
  }

  /// Returns a new [NotificationCollectionModelAllOfLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NotificationCollectionModelAllOfLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "NotificationCollectionModelAllOfLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "NotificationCollectionModelAllOfLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NotificationCollectionModelAllOfLinks(
        self: NotificationCollectionModelAllOfLinksSelf.fromJson(json[r'self'])!,
        jumpTo: NotificationCollectionModelAllOfLinksJumpTo.fromJson(json[r'jumpTo']),
        changeSize: NotificationCollectionModelAllOfLinksChangeSize.fromJson(json[r'changeSize']),
      );
    }
    return null;
  }

  static List<NotificationCollectionModelAllOfLinks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NotificationCollectionModelAllOfLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NotificationCollectionModelAllOfLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NotificationCollectionModelAllOfLinks> mapFromJson(dynamic json) {
    final map = <String, NotificationCollectionModelAllOfLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NotificationCollectionModelAllOfLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NotificationCollectionModelAllOfLinks-objects as value to a dart map
  static Map<String, List<NotificationCollectionModelAllOfLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NotificationCollectionModelAllOfLinks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NotificationCollectionModelAllOfLinks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'self',
  };
}

