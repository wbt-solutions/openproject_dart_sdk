//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class NewsModelLinksProject {
  /// Returns a new [NewsModelLinksProject] instance.
  NewsModelLinksProject({
    required this.href,
    this.title,
    this.templated = false,
    this.method = 'GET',
    this.payload,
    this.identifier,
    this.type,
  });

  /// URL to the referenced resource (might be relative)
  Object href;

  /// Representative label for the resource
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  /// If true the href contains parts that need to be replaced by the client
  bool templated;

  /// The HTTP verb to use when requesting the resource
  String method;

  /// The payload to send in the request to achieve the desired result
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? payload;

  /// An optional unique identifier to the link object
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? identifier;

  /// The MIME-Type of the returned resource.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NewsModelLinksProject &&
    other.href == href &&
    other.title == title &&
    other.templated == templated &&
    other.method == method &&
    other.payload == payload &&
    other.identifier == identifier &&
    other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (href.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (templated.hashCode) +
    (method.hashCode) +
    (payload == null ? 0 : payload!.hashCode) +
    (identifier == null ? 0 : identifier!.hashCode) +
    (type == null ? 0 : type!.hashCode);

  @override
  String toString() => 'NewsModelLinksProject[href=$href, title=$title, templated=$templated, method=$method, payload=$payload, identifier=$identifier, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'href'] = this.href;
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
      json[r'templated'] = this.templated;
      json[r'method'] = this.method;
    if (this.payload != null) {
      json[r'payload'] = this.payload;
    } else {
      json[r'payload'] = null;
    }
    if (this.identifier != null) {
      json[r'identifier'] = this.identifier;
    } else {
      json[r'identifier'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    return json;
  }

  /// Returns a new [NewsModelLinksProject] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NewsModelLinksProject? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "NewsModelLinksProject[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "NewsModelLinksProject[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NewsModelLinksProject(
        href: mapValueOfType<Object>(json, r'href')!,
        title: mapValueOfType<String>(json, r'title'),
        templated: mapValueOfType<bool>(json, r'templated') ?? false,
        method: mapValueOfType<String>(json, r'method') ?? 'GET',
        payload: mapValueOfType<Object>(json, r'payload'),
        identifier: mapValueOfType<String>(json, r'identifier'),
        type: mapValueOfType<String>(json, r'type'),
      );
    }
    return null;
  }

  static List<NewsModelLinksProject> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NewsModelLinksProject>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NewsModelLinksProject.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NewsModelLinksProject> mapFromJson(dynamic json) {
    final map = <String, NewsModelLinksProject>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NewsModelLinksProject.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NewsModelLinksProject-objects as value to a dart map
  static Map<String, List<NewsModelLinksProject>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NewsModelLinksProject>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NewsModelLinksProject.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'href',
  };
}

