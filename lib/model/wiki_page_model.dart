//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class WikiPageModel {
  /// Returns a new [WikiPageModel] instance.
  WikiPageModel({
    this.id,
    required this.title,
    this.links,
  });

  /// Identifier of this wiki page
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  /// The wiki page's title
  String title;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  WikiPageModelLinks? links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WikiPageModel &&
    other.id == id &&
    other.title == title &&
    other.links == links;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (title.hashCode) +
    (links == null ? 0 : links!.hashCode);

  @override
  String toString() => 'WikiPageModel[id=$id, title=$title, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'title'] = this.title;
    if (this.links != null) {
      json[r'_links'] = this.links;
    } else {
      json[r'_links'] = null;
    }
    return json;
  }

  /// Returns a new [WikiPageModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WikiPageModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WikiPageModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WikiPageModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WikiPageModel(
        id: mapValueOfType<int>(json, r'id'),
        title: mapValueOfType<String>(json, r'title')!,
        links: WikiPageModelLinks.fromJson(json[r'_links']),
      );
    }
    return null;
  }

  static List<WikiPageModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WikiPageModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WikiPageModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WikiPageModel> mapFromJson(dynamic json) {
    final map = <String, WikiPageModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WikiPageModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WikiPageModel-objects as value to a dart map
  static Map<String, List<WikiPageModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WikiPageModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WikiPageModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'title',
  };
}

