//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class InlineObject4 {
  /// Returns a new [InlineObject4] instance.
  InlineObject4({
    this.login,
    this.email,
    this.firstName,
    this.lastName,
    this.admin,
    this.language,
  });

  String login;

  String email;

  String firstName;

  String lastName;

  bool admin;

  String language;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InlineObject4 &&
     other.login == login &&
     other.email == email &&
     other.firstName == firstName &&
     other.lastName == lastName &&
     other.admin == admin &&
     other.language == language;

  @override
  int get hashCode =>
    (login == null ? 0 : login.hashCode) +
    (email == null ? 0 : email.hashCode) +
    (firstName == null ? 0 : firstName.hashCode) +
    (lastName == null ? 0 : lastName.hashCode) +
    (admin == null ? 0 : admin.hashCode) +
    (language == null ? 0 : language.hashCode);

  @override
  String toString() => 'InlineObject4[login=$login, email=$email, firstName=$firstName, lastName=$lastName, admin=$admin, language=$language]';

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
    return json;
  }

  /// Returns a new [InlineObject4] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static InlineObject4 fromJson(Map<String, dynamic> json) => json == null
    ? null
    : InlineObject4(
        login: json[r'login'],
        email: json[r'email'],
        firstName: json[r'firstName'],
        lastName: json[r'lastName'],
        admin: json[r'admin'],
        language: json[r'language'],
    );

  static List<InlineObject4> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <InlineObject4>[]
      : json.map((dynamic value) => InlineObject4.fromJson(value)).toList(growable: true == growable);

  static Map<String, InlineObject4> mapFromJson(Map<String, dynamic> json) {
    final map = <String, InlineObject4>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = InlineObject4.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineObject4-objects as value to a dart map
  static Map<String, List<InlineObject4>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InlineObject4>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = InlineObject4.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

