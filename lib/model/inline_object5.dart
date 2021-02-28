//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class InlineObject5 {
  /// Returns a new [InlineObject5] instance.
  InlineObject5({
    this.login,
    this.email,
    this.firstName,
    this.lastName,
    this.admin,
    this.language,
    this.status,
    this.password,
  });

  String login;

  String email;

  String firstName;

  String lastName;

  bool admin;

  String language;

  String status;

  String password;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InlineObject5 &&
     other.login == login &&
     other.email == email &&
     other.firstName == firstName &&
     other.lastName == lastName &&
     other.admin == admin &&
     other.language == language &&
     other.status == status &&
     other.password == password;

  @override
  int get hashCode =>
    (login == null ? 0 : login.hashCode) +
    (email == null ? 0 : email.hashCode) +
    (firstName == null ? 0 : firstName.hashCode) +
    (lastName == null ? 0 : lastName.hashCode) +
    (admin == null ? 0 : admin.hashCode) +
    (language == null ? 0 : language.hashCode) +
    (status == null ? 0 : status.hashCode) +
    (password == null ? 0 : password.hashCode);

  @override
  String toString() => 'InlineObject5[login=$login, email=$email, firstName=$firstName, lastName=$lastName, admin=$admin, language=$language, status=$status, password=$password]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (login != null) {
      json[r'login'] = login;
    }
    if (email != null) {
      json[r'email'] = email;
    }
    if (firstName != null) {
      json[r'firstName'] = firstName;
    }
    if (lastName != null) {
      json[r'lastName'] = lastName;
    }
    if (admin != null) {
      json[r'admin'] = admin;
    }
    if (language != null) {
      json[r'language'] = language;
    }
    if (status != null) {
      json[r'status'] = status;
    }
    if (password != null) {
      json[r'password'] = password;
    }
    return json;
  }

  /// Returns a new [InlineObject5] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static InlineObject5 fromJson(Map<String, dynamic> json) => json == null
    ? null
    : InlineObject5(
        login: json[r'login'],
        email: json[r'email'],
        firstName: json[r'firstName'],
        lastName: json[r'lastName'],
        admin: json[r'admin'],
        language: json[r'language'],
        status: json[r'status'],
        password: json[r'password'],
    );

  static List<InlineObject5> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <InlineObject5>[]
      : json.map((v) => InlineObject5.fromJson(v)).toList(growable: true == growable);

  static Map<String, InlineObject5> mapFromJson(Map<String, dynamic> json) {
    final map = <String, InlineObject5>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = InlineObject5.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of InlineObject5-objects as value to a dart map
  static Map<String, List<InlineObject5>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InlineObject5>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = InlineObject5.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

