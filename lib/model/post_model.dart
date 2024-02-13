//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class PostModel {
  /// Returns a new [PostModel] instance.
  PostModel({
    this.id,
    required this.subject,
    this.links,
  });

  /// Identifier of this post
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  /// The post's subject
  String subject;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  PostModelLinks? links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PostModel &&
    other.id == id &&
    other.subject == subject &&
    other.links == links;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (subject.hashCode) +
    (links == null ? 0 : links!.hashCode);

  @override
  String toString() => 'PostModel[id=$id, subject=$subject, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'subject'] = this.subject;
    if (this.links != null) {
      json[r'_links'] = this.links;
    } else {
      json[r'_links'] = null;
    }
    return json;
  }

  /// Returns a new [PostModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PostModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PostModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PostModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PostModel(
        id: mapValueOfType<int>(json, r'id'),
        subject: mapValueOfType<String>(json, r'subject')!,
        links: PostModelLinks.fromJson(json[r'_links']),
      );
    }
    return null;
  }

  static List<PostModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PostModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PostModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PostModel> mapFromJson(dynamic json) {
    final map = <String, PostModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PostModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PostModel-objects as value to a dart map
  static Map<String, List<PostModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PostModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PostModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'subject',
  };
}

