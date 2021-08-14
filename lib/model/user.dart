//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class User {
  /// Returns a new [User] instance.
  User({
    this.id,
    this.login,
    this.firstName,
    this.lastName,
    this.name,
    this.email,
    this.admin,
    this.avatar,
    this.createdAt,
    this.updatedAt,
    this.status,
    this.language,
    this.password,
    this.identityUrl,
    this.links,
  });

  int id;

  String login;

  String firstName;

  String lastName;

  String name;

  String email;

  bool admin;

  String avatar;

  DateTime createdAt;

  DateTime updatedAt;

  UserStatusEnum status;

  String language;

  String password;

  String identityUrl;

  UserLinks links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is User &&
     other.id == id &&
     other.login == login &&
     other.firstName == firstName &&
     other.lastName == lastName &&
     other.name == name &&
     other.email == email &&
     other.admin == admin &&
     other.avatar == avatar &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt &&
     other.status == status &&
     other.language == language &&
     other.password == password &&
     other.identityUrl == identityUrl &&
     other.links == links;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (login == null ? 0 : login.hashCode) +
    (firstName == null ? 0 : firstName.hashCode) +
    (lastName == null ? 0 : lastName.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (email == null ? 0 : email.hashCode) +
    (admin == null ? 0 : admin.hashCode) +
    (avatar == null ? 0 : avatar.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (updatedAt == null ? 0 : updatedAt.hashCode) +
    (status == null ? 0 : status.hashCode) +
    (language == null ? 0 : language.hashCode) +
    (password == null ? 0 : password.hashCode) +
    (identityUrl == null ? 0 : identityUrl.hashCode) +
    (links == null ? 0 : links.hashCode);

  @override
  String toString() => 'User[id=$id, login=$login, firstName=$firstName, lastName=$lastName, name=$name, email=$email, admin=$admin, avatar=$avatar, createdAt=$createdAt, updatedAt=$updatedAt, status=$status, language=$language, password=$password, identityUrl=$identityUrl, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (login != null) {
      json[r'login'] = login;
    }
    if (firstName != null) {
      json[r'firstName'] = firstName;
    }
    if (lastName != null) {
      json[r'lastName'] = lastName;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (email != null) {
      json[r'email'] = email;
    }
    if (admin != null) {
      json[r'admin'] = admin;
    }
    if (avatar != null) {
      json[r'avatar'] = avatar;
    }
    if (createdAt != null) {
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
    }
    if (updatedAt != null) {
      json[r'updatedAt'] = updatedAt.toUtc().toIso8601String();
    }
    if (status != null) {
      json[r'status'] = status;
    }
    if (language != null) {
      json[r'language'] = language;
    }
    if (password != null) {
      json[r'password'] = password;
    }
    if (identityUrl != null) {
      json[r'identity_url'] = identityUrl;
    }
    if (links != null) {
      json[r'_links'] = links;
    }
    return json;
  }

  /// Returns a new [User] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static User fromJson(Map<String, dynamic> json) => json == null
    ? null
    : User(
        id: json[r'id'],
        login: json[r'login'],
        firstName: json[r'firstName'],
        lastName: json[r'lastName'],
        name: json[r'name'],
        email: json[r'email'],
        admin: json[r'admin'],
        avatar: json[r'avatar'],
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        updatedAt: json[r'updatedAt'] == null
          ? null
          : DateTime.parse(json[r'updatedAt']),
        status: UserStatusEnum.fromJson(json[r'status']),
        language: json[r'language'],
        password: json[r'password'],
        identityUrl: json[r'identity_url'],
        links: UserLinks.fromJson(json[r'_links']),
    );

  static List<User> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <User>[]
      : json.map((dynamic value) => User.fromJson(value)).toList(growable: true == growable);

  static Map<String, User> mapFromJson(Map<String, dynamic> json) {
    final map = <String, User>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = User.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of User-objects as value to a dart map
  static Map<String, List<User>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<User>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = User.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}


class UserStatusEnum {
  /// Instantiate a new enum with the provided [value].
  const UserStatusEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const active = UserStatusEnum._(r'active');
  static const registered = UserStatusEnum._(r'registered');
  static const locked = UserStatusEnum._(r'locked');
  static const invited = UserStatusEnum._(r'invited');

  /// List of all possible values in this [enum][UserStatusEnum].
  static const values = <UserStatusEnum>[
    active,
    registered,
    locked,
    invited,
  ];

  static UserStatusEnum fromJson(dynamic value) =>
    UserStatusEnumTypeTransformer().decode(value);

  static List<UserStatusEnum> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <UserStatusEnum>[]
      : json
          .map((value) => UserStatusEnum.fromJson(value))
          .toList(growable: true == growable);
}

/// Transformation class that can [encode] an instance of [UserStatusEnum] to String,
/// and [decode] dynamic data back to [UserStatusEnum].
class UserStatusEnumTypeTransformer {
  const UserStatusEnumTypeTransformer._();

  factory UserStatusEnumTypeTransformer() => _instance ??= UserStatusEnumTypeTransformer._();

  String encode(UserStatusEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a UserStatusEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UserStatusEnum decode(dynamic data, {bool allowNull}) {
    switch (data) {
      case r'active': return UserStatusEnum.active;
      case r'registered': return UserStatusEnum.registered;
      case r'locked': return UserStatusEnum.locked;
      case r'invited': return UserStatusEnum.invited;
      default:
        if (allowNull == false) {
          throw ArgumentError('Unknown enum value to decode: $data');
        }
    }
    return null;
  }

  /// Singleton [UserStatusEnumTypeTransformer] instance.
  static UserStatusEnumTypeTransformer _instance;
}

