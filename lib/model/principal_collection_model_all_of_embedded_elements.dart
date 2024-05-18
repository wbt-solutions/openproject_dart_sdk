//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class PrincipalCollectionModelAllOfEmbeddedElements {
  /// Returns a new [PrincipalCollectionModelAllOfEmbeddedElements] instance.
  PrincipalCollectionModelAllOfEmbeddedElements({
    required this.type,
    required this.id,
    required this.name,
    this.createdAt,
    this.updatedAt,
    required this.links,
    required this.avatar,
    this.login,
    this.firstName,
    this.lastName,
    this.email,
    this.admin,
    this.status,
    this.language,
    this.identityUrl,
    required this.embedded,
  });

  PrincipalCollectionModelAllOfEmbeddedElementsTypeEnum type;

  /// The principal's unique identifier.
  ///
  /// Minimum value: 1
  int id;

  /// The principal's display name, layout depends on instance settings.
  String name;

  /// Time of creation
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  /// Time of the most recent change to the principal
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  GroupModelAllOfLinks links;

  /// URL to user's avatar
  String avatar;

  /// The user's login name  # Conditions  - User is self, or `create_user` or `manage_user` permission globally
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? login;

  /// The user's first name  # Conditions  - User is self, or `create_user` or `manage_user` permission globally
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? firstName;

  /// The user's last name  # Conditions  - User is self, or `create_user` or `manage_user` permission globally
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastName;

  /// The user's email address  # Conditions  - E-Mail address not hidden - User is not a new record - User is self, or `create_user` or `manage_user` permission globally
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  /// Flag indicating whether or not the user is an admin  # Conditions  - `admin`
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? admin;

  /// The current activation status of the placeholder user.  # Conditions  - User has `manage_placeholder_user` permission globally
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// User's language | ISO 639-1 format  # Conditions  - User is self, or `create_user` or `manage_user` permission globally
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? language;

  /// User's identity_url for OmniAuth authentication.  # Conditions  - User is self, or `create_user` or `manage_user` permission globally
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? identityUrl;

  GroupModelAllOfEmbedded embedded;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PrincipalCollectionModelAllOfEmbeddedElements &&
    other.type == type &&
    other.id == id &&
    other.name == name &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt &&
    other.links == links &&
    other.avatar == avatar &&
    other.login == login &&
    other.firstName == firstName &&
    other.lastName == lastName &&
    other.email == email &&
    other.admin == admin &&
    other.status == status &&
    other.language == language &&
    other.identityUrl == identityUrl &&
    other.embedded == embedded;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (id.hashCode) +
    (name.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (links.hashCode) +
    (avatar.hashCode) +
    (login == null ? 0 : login!.hashCode) +
    (firstName == null ? 0 : firstName!.hashCode) +
    (lastName == null ? 0 : lastName!.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (admin == null ? 0 : admin!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (language == null ? 0 : language!.hashCode) +
    (identityUrl == null ? 0 : identityUrl!.hashCode) +
    (embedded.hashCode);

  @override
  String toString() => 'PrincipalCollectionModelAllOfEmbeddedElements[type=$type, id=$id, name=$name, createdAt=$createdAt, updatedAt=$updatedAt, links=$links, avatar=$avatar, login=$login, firstName=$firstName, lastName=$lastName, email=$email, admin=$admin, status=$status, language=$language, identityUrl=$identityUrl, embedded=$embedded]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'_type'] = this.type;
      json[r'id'] = this.id;
      json[r'name'] = this.name;
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
      json[r'avatar'] = this.avatar;
    if (this.login != null) {
      json[r'login'] = this.login;
    } else {
      json[r'login'] = null;
    }
    if (this.firstName != null) {
      json[r'firstName'] = this.firstName;
    } else {
      json[r'firstName'] = null;
    }
    if (this.lastName != null) {
      json[r'lastName'] = this.lastName;
    } else {
      json[r'lastName'] = null;
    }
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.admin != null) {
      json[r'admin'] = this.admin;
    } else {
      json[r'admin'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.language != null) {
      json[r'language'] = this.language;
    } else {
      json[r'language'] = null;
    }
    if (this.identityUrl != null) {
      json[r'identityUrl'] = this.identityUrl;
    } else {
      json[r'identityUrl'] = null;
    }
      json[r'_embedded'] = this.embedded;
    return json;
  }

  /// Returns a new [PrincipalCollectionModelAllOfEmbeddedElements] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PrincipalCollectionModelAllOfEmbeddedElements? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PrincipalCollectionModelAllOfEmbeddedElements[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PrincipalCollectionModelAllOfEmbeddedElements[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PrincipalCollectionModelAllOfEmbeddedElements(
        type: PrincipalCollectionModelAllOfEmbeddedElementsTypeEnum.fromJson(json[r'_type'])!,
        id: mapValueOfType<int>(json, r'id')!,
        name: mapValueOfType<String>(json, r'name')!,
        createdAt: mapDateTime(json, r'createdAt', r''),
        updatedAt: mapDateTime(json, r'updatedAt', r''),
        links: GroupModelAllOfLinks.fromJson(json[r'_links'])!,
        avatar: mapValueOfType<String>(json, r'avatar')!,
        login: mapValueOfType<String>(json, r'login'),
        firstName: mapValueOfType<String>(json, r'firstName'),
        lastName: mapValueOfType<String>(json, r'lastName'),
        email: mapValueOfType<String>(json, r'email'),
        admin: mapValueOfType<bool>(json, r'admin'),
        status: mapValueOfType<String>(json, r'status'),
        language: mapValueOfType<String>(json, r'language'),
        identityUrl: mapValueOfType<Object>(json, r'identityUrl'),
        embedded: GroupModelAllOfEmbedded.fromJson(json[r'_embedded'])!,
      );
    }
    return null;
  }

  static List<PrincipalCollectionModelAllOfEmbeddedElements> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PrincipalCollectionModelAllOfEmbeddedElements>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PrincipalCollectionModelAllOfEmbeddedElements.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PrincipalCollectionModelAllOfEmbeddedElements> mapFromJson(dynamic json) {
    final map = <String, PrincipalCollectionModelAllOfEmbeddedElements>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PrincipalCollectionModelAllOfEmbeddedElements.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PrincipalCollectionModelAllOfEmbeddedElements-objects as value to a dart map
  static Map<String, List<PrincipalCollectionModelAllOfEmbeddedElements>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PrincipalCollectionModelAllOfEmbeddedElements>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PrincipalCollectionModelAllOfEmbeddedElements.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    '_type',
    'id',
    'name',
    '_links',
    'avatar',
    '_embedded',
  };
}


class PrincipalCollectionModelAllOfEmbeddedElementsTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const PrincipalCollectionModelAllOfEmbeddedElementsTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const group = PrincipalCollectionModelAllOfEmbeddedElementsTypeEnum._(r'Group');

  /// List of all possible values in this [enum][PrincipalCollectionModelAllOfEmbeddedElementsTypeEnum].
  static const values = <PrincipalCollectionModelAllOfEmbeddedElementsTypeEnum>[
    group,
  ];

  static PrincipalCollectionModelAllOfEmbeddedElementsTypeEnum? fromJson(dynamic value) => PrincipalCollectionModelAllOfEmbeddedElementsTypeEnumTypeTransformer().decode(value);

  static List<PrincipalCollectionModelAllOfEmbeddedElementsTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PrincipalCollectionModelAllOfEmbeddedElementsTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PrincipalCollectionModelAllOfEmbeddedElementsTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [PrincipalCollectionModelAllOfEmbeddedElementsTypeEnum] to String,
/// and [decode] dynamic data back to [PrincipalCollectionModelAllOfEmbeddedElementsTypeEnum].
class PrincipalCollectionModelAllOfEmbeddedElementsTypeEnumTypeTransformer {
  factory PrincipalCollectionModelAllOfEmbeddedElementsTypeEnumTypeTransformer() => _instance ??= const PrincipalCollectionModelAllOfEmbeddedElementsTypeEnumTypeTransformer._();

  const PrincipalCollectionModelAllOfEmbeddedElementsTypeEnumTypeTransformer._();

  String encode(PrincipalCollectionModelAllOfEmbeddedElementsTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a PrincipalCollectionModelAllOfEmbeddedElementsTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  PrincipalCollectionModelAllOfEmbeddedElementsTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'Group': return PrincipalCollectionModelAllOfEmbeddedElementsTypeEnum.group;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [PrincipalCollectionModelAllOfEmbeddedElementsTypeEnumTypeTransformer] instance.
  static PrincipalCollectionModelAllOfEmbeddedElementsTypeEnumTypeTransformer? _instance;
}


