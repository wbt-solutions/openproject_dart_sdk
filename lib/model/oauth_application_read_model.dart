//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class OauthApplicationReadModel {
  /// Returns a new [OauthApplicationReadModel] instance.
  OauthApplicationReadModel({
    required this.id,
    required this.type,
    required this.name,
    required this.clientId,
    this.clientSecret,
    required this.confidential,
    this.createdAt,
    this.updatedAt,
    this.scopes = const [],
    this.links,
  });

  /// Minimum value: 1
  int id;

  OauthApplicationReadModelTypeEnum type;

  /// The name of the OAuth 2 application
  String name;

  /// OAuth 2 client id
  String clientId;

  /// OAuth 2 client secret. This is only returned when creating a new OAuth application.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? clientSecret;

  /// true, if OAuth 2 credentials are confidential, false, if no secret is stored
  bool confidential;

  /// The time the OAuth 2 Application was created at
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  /// The time the OAuth 2 Application was last updated
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  /// An array of the scopes of the OAuth 2 Application
  List<String> scopes;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  OauthApplicationReadModelLinks? links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OauthApplicationReadModel &&
    other.id == id &&
    other.type == type &&
    other.name == name &&
    other.clientId == clientId &&
    other.clientSecret == clientSecret &&
    other.confidential == confidential &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt &&
    _deepEquality.equals(other.scopes, scopes) &&
    other.links == links;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (type.hashCode) +
    (name.hashCode) +
    (clientId.hashCode) +
    (clientSecret == null ? 0 : clientSecret!.hashCode) +
    (confidential.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (scopes.hashCode) +
    (links == null ? 0 : links!.hashCode);

  @override
  String toString() => 'OauthApplicationReadModel[id=$id, type=$type, name=$name, clientId=$clientId, clientSecret=$clientSecret, confidential=$confidential, createdAt=$createdAt, updatedAt=$updatedAt, scopes=$scopes, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'_type'] = this.type;
      json[r'name'] = this.name;
      json[r'clientId'] = this.clientId;
    if (this.clientSecret != null) {
      json[r'clientSecret'] = this.clientSecret;
    } else {
      json[r'clientSecret'] = null;
    }
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
      json[r'scopes'] = this.scopes;
    if (this.links != null) {
      json[r'_links'] = this.links;
    } else {
      json[r'_links'] = null;
    }
    return json;
  }

  /// Returns a new [OauthApplicationReadModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OauthApplicationReadModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OauthApplicationReadModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OauthApplicationReadModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OauthApplicationReadModel(
        id: mapValueOfType<int>(json, r'id')!,
        type: OauthApplicationReadModelTypeEnum.fromJson(json[r'_type'])!,
        name: mapValueOfType<String>(json, r'name')!,
        clientId: mapValueOfType<String>(json, r'clientId')!,
        clientSecret: mapValueOfType<String>(json, r'clientSecret'),
        confidential: mapValueOfType<bool>(json, r'confidential')!,
        createdAt: mapDateTime(json, r'createdAt', r''),
        updatedAt: mapDateTime(json, r'updatedAt', r''),
        scopes: json[r'scopes'] is Iterable
            ? (json[r'scopes'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        links: OauthApplicationReadModelLinks.fromJson(json[r'_links']),
      );
    }
    return null;
  }

  static List<OauthApplicationReadModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OauthApplicationReadModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OauthApplicationReadModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OauthApplicationReadModel> mapFromJson(dynamic json) {
    final map = <String, OauthApplicationReadModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OauthApplicationReadModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OauthApplicationReadModel-objects as value to a dart map
  static Map<String, List<OauthApplicationReadModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OauthApplicationReadModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OauthApplicationReadModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    '_type',
    'name',
    'clientId',
    'confidential',
  };
}


class OauthApplicationReadModelTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const OauthApplicationReadModelTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const oAuthApplication = OauthApplicationReadModelTypeEnum._(r'OAuthApplication');

  /// List of all possible values in this [enum][OauthApplicationReadModelTypeEnum].
  static const values = <OauthApplicationReadModelTypeEnum>[
    oAuthApplication,
  ];

  static OauthApplicationReadModelTypeEnum? fromJson(dynamic value) => OauthApplicationReadModelTypeEnumTypeTransformer().decode(value);

  static List<OauthApplicationReadModelTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OauthApplicationReadModelTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OauthApplicationReadModelTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [OauthApplicationReadModelTypeEnum] to String,
/// and [decode] dynamic data back to [OauthApplicationReadModelTypeEnum].
class OauthApplicationReadModelTypeEnumTypeTransformer {
  factory OauthApplicationReadModelTypeEnumTypeTransformer() => _instance ??= const OauthApplicationReadModelTypeEnumTypeTransformer._();

  const OauthApplicationReadModelTypeEnumTypeTransformer._();

  String encode(OauthApplicationReadModelTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a OauthApplicationReadModelTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  OauthApplicationReadModelTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'OAuthApplication': return OauthApplicationReadModelTypeEnum.oAuthApplication;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [OauthApplicationReadModelTypeEnumTypeTransformer] instance.
  static OauthApplicationReadModelTypeEnumTypeTransformer? _instance;
}


