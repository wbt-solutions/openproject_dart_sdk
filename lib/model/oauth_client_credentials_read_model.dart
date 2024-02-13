//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class OauthClientCredentialsReadModel {
  /// Returns a new [OauthClientCredentialsReadModel] instance.
  OauthClientCredentialsReadModel({
    required this.id,
    required this.type,
    required this.clientId,
    required this.confidential,
    this.createdAt,
    this.updatedAt,
    required this.links,
  });

  /// Minimum value: 1
  int id;

  OauthClientCredentialsReadModelTypeEnum type;

  /// OAuth 2 client id
  String clientId;

  /// true, if OAuth 2 credentials are confidential, false, if no secret is stored
  bool confidential;

  /// The time the OAuth client credentials were created at
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  /// The time the OAuth client credentials were last updated
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  OauthClientCredentialsReadModelLinks links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OauthClientCredentialsReadModel &&
    other.id == id &&
    other.type == type &&
    other.clientId == clientId &&
    other.confidential == confidential &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt &&
    other.links == links;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (type.hashCode) +
    (clientId.hashCode) +
    (confidential.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (links.hashCode);

  @override
  String toString() => 'OauthClientCredentialsReadModel[id=$id, type=$type, clientId=$clientId, confidential=$confidential, createdAt=$createdAt, updatedAt=$updatedAt, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'_type'] = this.type;
      json[r'clientId'] = this.clientId;
      json[r'confidential'] = this.confidential;
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'createdAt'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt!.toUtc().toIso8601String();
    } else {
      json[r'updatedAt'] = null;
    }
      json[r'_links'] = this.links;
    return json;
  }

  /// Returns a new [OauthClientCredentialsReadModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OauthClientCredentialsReadModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OauthClientCredentialsReadModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OauthClientCredentialsReadModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OauthClientCredentialsReadModel(
        id: mapValueOfType<int>(json, r'id')!,
        type: OauthClientCredentialsReadModelTypeEnum.fromJson(json[r'_type'])!,
        clientId: mapValueOfType<String>(json, r'clientId')!,
        confidential: mapValueOfType<bool>(json, r'confidential')!,
        createdAt: mapDateTime(json, r'createdAt', r''),
        updatedAt: mapDateTime(json, r'updatedAt', r''),
        links: OauthClientCredentialsReadModelLinks.fromJson(json[r'_links'])!,
      );
    }
    return null;
  }

  static List<OauthClientCredentialsReadModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OauthClientCredentialsReadModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OauthClientCredentialsReadModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OauthClientCredentialsReadModel> mapFromJson(dynamic json) {
    final map = <String, OauthClientCredentialsReadModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OauthClientCredentialsReadModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OauthClientCredentialsReadModel-objects as value to a dart map
  static Map<String, List<OauthClientCredentialsReadModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OauthClientCredentialsReadModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OauthClientCredentialsReadModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    '_type',
    'clientId',
    'confidential',
    '_links',
  };
}


class OauthClientCredentialsReadModelTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const OauthClientCredentialsReadModelTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const oAuthClientCredentials = OauthClientCredentialsReadModelTypeEnum._(r'OAuthClientCredentials');

  /// List of all possible values in this [enum][OauthClientCredentialsReadModelTypeEnum].
  static const values = <OauthClientCredentialsReadModelTypeEnum>[
    oAuthClientCredentials,
  ];

  static OauthClientCredentialsReadModelTypeEnum? fromJson(dynamic value) => OauthClientCredentialsReadModelTypeEnumTypeTransformer().decode(value);

  static List<OauthClientCredentialsReadModelTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OauthClientCredentialsReadModelTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OauthClientCredentialsReadModelTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [OauthClientCredentialsReadModelTypeEnum] to String,
/// and [decode] dynamic data back to [OauthClientCredentialsReadModelTypeEnum].
class OauthClientCredentialsReadModelTypeEnumTypeTransformer {
  factory OauthClientCredentialsReadModelTypeEnumTypeTransformer() => _instance ??= const OauthClientCredentialsReadModelTypeEnumTypeTransformer._();

  const OauthClientCredentialsReadModelTypeEnumTypeTransformer._();

  String encode(OauthClientCredentialsReadModelTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a OauthClientCredentialsReadModelTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  OauthClientCredentialsReadModelTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'OAuthClientCredentials': return OauthClientCredentialsReadModelTypeEnum.oAuthClientCredentials;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [OauthClientCredentialsReadModelTypeEnumTypeTransformer] instance.
  static OauthClientCredentialsReadModelTypeEnumTypeTransformer? _instance;
}


