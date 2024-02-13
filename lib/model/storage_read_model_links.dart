//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class StorageReadModelLinks {
  /// Returns a new [StorageReadModelLinks] instance.
  StorageReadModelLinks({
    required this.self,
    required this.type,
    required this.origin,
    required this.open,
    required this.authorizationState,
    this.authorize,
    this.oauthApplication,
    this.oauthClientCredentials,
  });

  StorageReadModelLinksSelf self;

  StorageReadModelLinksType type;

  StorageReadModelLinksOrigin origin;

  StorageReadModelLinksOpen open;

  StorageReadModelLinksAuthorizationState authorizationState;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  StorageReadModelLinksAuthorize? authorize;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  StorageReadModelLinksOauthApplication? oauthApplication;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  StorageReadModelLinksOauthClientCredentials? oauthClientCredentials;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StorageReadModelLinks &&
    other.self == self &&
    other.type == type &&
    other.origin == origin &&
    other.open == open &&
    other.authorizationState == authorizationState &&
    other.authorize == authorize &&
    other.oauthApplication == oauthApplication &&
    other.oauthClientCredentials == oauthClientCredentials;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (self.hashCode) +
    (type.hashCode) +
    (origin.hashCode) +
    (open.hashCode) +
    (authorizationState.hashCode) +
    (authorize == null ? 0 : authorize!.hashCode) +
    (oauthApplication == null ? 0 : oauthApplication!.hashCode) +
    (oauthClientCredentials == null ? 0 : oauthClientCredentials!.hashCode);

  @override
  String toString() => 'StorageReadModelLinks[self=$self, type=$type, origin=$origin, open=$open, authorizationState=$authorizationState, authorize=$authorize, oauthApplication=$oauthApplication, oauthClientCredentials=$oauthClientCredentials]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'self'] = this.self;
      json[r'type'] = this.type;
      json[r'origin'] = this.origin;
      json[r'open'] = this.open;
      json[r'authorizationState'] = this.authorizationState;
    if (this.authorize != null) {
      json[r'authorize'] = this.authorize;
    } else {
      json[r'authorize'] = null;
    }
    if (this.oauthApplication != null) {
      json[r'oauthApplication'] = this.oauthApplication;
    } else {
      json[r'oauthApplication'] = null;
    }
    if (this.oauthClientCredentials != null) {
      json[r'oauthClientCredentials'] = this.oauthClientCredentials;
    } else {
      json[r'oauthClientCredentials'] = null;
    }
    return json;
  }

  /// Returns a new [StorageReadModelLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StorageReadModelLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StorageReadModelLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StorageReadModelLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StorageReadModelLinks(
        self: StorageReadModelLinksSelf.fromJson(json[r'self'])!,
        type: StorageReadModelLinksType.fromJson(json[r'type'])!,
        origin: StorageReadModelLinksOrigin.fromJson(json[r'origin'])!,
        open: StorageReadModelLinksOpen.fromJson(json[r'open'])!,
        authorizationState: StorageReadModelLinksAuthorizationState.fromJson(json[r'authorizationState'])!,
        authorize: StorageReadModelLinksAuthorize.fromJson(json[r'authorize']),
        oauthApplication: StorageReadModelLinksOauthApplication.fromJson(json[r'oauthApplication']),
        oauthClientCredentials: StorageReadModelLinksOauthClientCredentials.fromJson(json[r'oauthClientCredentials']),
      );
    }
    return null;
  }

  static List<StorageReadModelLinks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StorageReadModelLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StorageReadModelLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StorageReadModelLinks> mapFromJson(dynamic json) {
    final map = <String, StorageReadModelLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StorageReadModelLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StorageReadModelLinks-objects as value to a dart map
  static Map<String, List<StorageReadModelLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StorageReadModelLinks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StorageReadModelLinks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'self',
    'type',
    'origin',
    'open',
    'authorizationState',
  };
}

