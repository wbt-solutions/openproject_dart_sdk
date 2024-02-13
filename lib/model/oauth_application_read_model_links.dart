//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class OauthApplicationReadModelLinks {
  /// Returns a new [OauthApplicationReadModelLinks] instance.
  OauthApplicationReadModelLinks({
    required this.self,
    required this.owner,
    this.integration,
    required this.redirectUri,
  });

  OauthApplicationReadModelLinksSelf self;

  OauthApplicationReadModelLinksOwner owner;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  OauthApplicationReadModelLinksIntegration? integration;

  OauthApplicationReadModelLinksRedirectUri redirectUri;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OauthApplicationReadModelLinks &&
    other.self == self &&
    other.owner == owner &&
    other.integration == integration &&
    other.redirectUri == redirectUri;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (self.hashCode) +
    (owner.hashCode) +
    (integration == null ? 0 : integration!.hashCode) +
    (redirectUri.hashCode);

  @override
  String toString() => 'OauthApplicationReadModelLinks[self=$self, owner=$owner, integration=$integration, redirectUri=$redirectUri]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'self'] = this.self;
      json[r'owner'] = this.owner;
    if (this.integration != null) {
      json[r'integration'] = this.integration;
    } else {
      json[r'integration'] = null;
    }
      json[r'redirectUri'] = this.redirectUri;
    return json;
  }

  /// Returns a new [OauthApplicationReadModelLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OauthApplicationReadModelLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OauthApplicationReadModelLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OauthApplicationReadModelLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OauthApplicationReadModelLinks(
        self: OauthApplicationReadModelLinksSelf.fromJson(json[r'self'])!,
        owner: OauthApplicationReadModelLinksOwner.fromJson(json[r'owner'])!,
        integration: OauthApplicationReadModelLinksIntegration.fromJson(json[r'integration']),
        redirectUri: OauthApplicationReadModelLinksRedirectUri.fromJson(json[r'redirectUri'])!,
      );
    }
    return null;
  }

  static List<OauthApplicationReadModelLinks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OauthApplicationReadModelLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OauthApplicationReadModelLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OauthApplicationReadModelLinks> mapFromJson(dynamic json) {
    final map = <String, OauthApplicationReadModelLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OauthApplicationReadModelLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OauthApplicationReadModelLinks-objects as value to a dart map
  static Map<String, List<OauthApplicationReadModelLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OauthApplicationReadModelLinks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OauthApplicationReadModelLinks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'self',
    'owner',
    'redirectUri',
  };
}

