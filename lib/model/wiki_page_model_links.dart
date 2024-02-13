//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class WikiPageModelLinks {
  /// Returns a new [WikiPageModelLinks] instance.
  WikiPageModelLinks({
    this.addAttachment,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  WikiPageModelLinksAddAttachment? addAttachment;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WikiPageModelLinks &&
    other.addAttachment == addAttachment;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (addAttachment == null ? 0 : addAttachment!.hashCode);

  @override
  String toString() => 'WikiPageModelLinks[addAttachment=$addAttachment]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.addAttachment != null) {
      json[r'addAttachment'] = this.addAttachment;
    } else {
      json[r'addAttachment'] = null;
    }
    return json;
  }

  /// Returns a new [WikiPageModelLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WikiPageModelLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WikiPageModelLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WikiPageModelLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WikiPageModelLinks(
        addAttachment: WikiPageModelLinksAddAttachment.fromJson(json[r'addAttachment']),
      );
    }
    return null;
  }

  static List<WikiPageModelLinks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WikiPageModelLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WikiPageModelLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WikiPageModelLinks> mapFromJson(dynamic json) {
    final map = <String, WikiPageModelLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WikiPageModelLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WikiPageModelLinks-objects as value to a dart map
  static Map<String, List<WikiPageModelLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WikiPageModelLinks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WikiPageModelLinks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

