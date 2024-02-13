//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class OauthClientCredentialsWriteModel {
  /// Returns a new [OauthClientCredentialsWriteModel] instance.
  OauthClientCredentialsWriteModel({
    required this.clientId,
    required this.clientSecret,
  });

  /// OAuth 2 client id
  String clientId;

  /// OAuth 2 client secret
  String clientSecret;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OauthClientCredentialsWriteModel &&
    other.clientId == clientId &&
    other.clientSecret == clientSecret;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (clientId.hashCode) +
    (clientSecret.hashCode);

  @override
  String toString() => 'OauthClientCredentialsWriteModel[clientId=$clientId, clientSecret=$clientSecret]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'clientId'] = this.clientId;
      json[r'clientSecret'] = this.clientSecret;
    return json;
  }

  /// Returns a new [OauthClientCredentialsWriteModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OauthClientCredentialsWriteModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OauthClientCredentialsWriteModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OauthClientCredentialsWriteModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OauthClientCredentialsWriteModel(
        clientId: mapValueOfType<String>(json, r'clientId')!,
        clientSecret: mapValueOfType<String>(json, r'clientSecret')!,
      );
    }
    return null;
  }

  static List<OauthClientCredentialsWriteModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OauthClientCredentialsWriteModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OauthClientCredentialsWriteModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OauthClientCredentialsWriteModel> mapFromJson(dynamic json) {
    final map = <String, OauthClientCredentialsWriteModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OauthClientCredentialsWriteModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OauthClientCredentialsWriteModel-objects as value to a dart map
  static Map<String, List<OauthClientCredentialsWriteModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OauthClientCredentialsWriteModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OauthClientCredentialsWriteModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'clientId',
    'clientSecret',
  };
}

