//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class PriorityCollectionModelAllOfLinksSelf {
  /// Returns a new [PriorityCollectionModelAllOfLinksSelf] instance.
  PriorityCollectionModelAllOfLinksSelf({
    required this.href,
    this.title,
    this.templated = false,
    this.method = 'GET',
    this.payload,
    this.identifier,
    this.type,
    this.self,
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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  PriorityCollectionModelAllOfLinksSelfAllOfSelf? self;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PriorityCollectionModelAllOfLinksSelf &&
    other.href == href &&
    other.title == title &&
    other.templated == templated &&
    other.method == method &&
    other.payload == payload &&
    other.identifier == identifier &&
    other.type == type &&
    other.self == self;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (href.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (templated.hashCode) +
    (method.hashCode) +
    (payload == null ? 0 : payload!.hashCode) +
    (identifier == null ? 0 : identifier!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (self == null ? 0 : self!.hashCode);

  @override
  String toString() => 'PriorityCollectionModelAllOfLinksSelf[href=$href, title=$title, templated=$templated, method=$method, payload=$payload, identifier=$identifier, type=$type, self=$self]';

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
    if (this.self != null) {
      json[r'self'] = this.self;
    } else {
      json[r'self'] = null;
    }
    return json;
  }

  /// Returns a new [PriorityCollectionModelAllOfLinksSelf] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PriorityCollectionModelAllOfLinksSelf? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PriorityCollectionModelAllOfLinksSelf[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PriorityCollectionModelAllOfLinksSelf[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PriorityCollectionModelAllOfLinksSelf(
        href: mapValueOfType<Object>(json, r'href')!,
        title: mapValueOfType<String>(json, r'title'),
        templated: mapValueOfType<bool>(json, r'templated') ?? false,
        method: mapValueOfType<String>(json, r'method') ?? 'GET',
        payload: mapValueOfType<Object>(json, r'payload'),
        identifier: mapValueOfType<String>(json, r'identifier'),
        type: mapValueOfType<String>(json, r'type'),
        self: PriorityCollectionModelAllOfLinksSelfAllOfSelf.fromJson(json[r'self']),
      );
    }
    return null;
  }

  static List<PriorityCollectionModelAllOfLinksSelf> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PriorityCollectionModelAllOfLinksSelf>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PriorityCollectionModelAllOfLinksSelf.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PriorityCollectionModelAllOfLinksSelf> mapFromJson(dynamic json) {
    final map = <String, PriorityCollectionModelAllOfLinksSelf>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PriorityCollectionModelAllOfLinksSelf.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PriorityCollectionModelAllOfLinksSelf-objects as value to a dart map
  static Map<String, List<PriorityCollectionModelAllOfLinksSelf>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PriorityCollectionModelAllOfLinksSelf>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PriorityCollectionModelAllOfLinksSelf.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'href',
  };
}

