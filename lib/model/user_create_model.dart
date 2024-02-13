//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class UserCreateModel {
  /// Returns a new [UserCreateModel] instance.
  UserCreateModel({
    required this.admin,
    required this.email,
    required this.login,
    this.password,
    required this.firstName,
    required this.lastName,
    this.status,
    required this.language,
  });

  bool admin;

  String email;

  String login;

  /// The users password.  *Conditions:*  Only writable on creation, not on update.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? password;

  String firstName;

  String lastName;

  /// The current activation status of the user.  *Conditions:*  Only writable on creation, not on update.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  String language;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserCreateModel &&
    other.admin == admin &&
    other.email == email &&
    other.login == login &&
    other.password == password &&
    other.firstName == firstName &&
    other.lastName == lastName &&
    other.status == status &&
    other.language == language;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (admin.hashCode) +
    (email.hashCode) +
    (login.hashCode) +
    (password == null ? 0 : password!.hashCode) +
    (firstName.hashCode) +
    (lastName.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (language.hashCode);

  @override
  String toString() => 'UserCreateModel[admin=$admin, email=$email, login=$login, password=$password, firstName=$firstName, lastName=$lastName, status=$status, language=$language]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'admin'] = this.admin;
      json[r'email'] = this.email;
      json[r'login'] = this.login;
    if (this.password != null) {
      json[r'password'] = this.password;
    } else {
      json[r'password'] = null;
    }
      json[r'firstName'] = this.firstName;
      json[r'lastName'] = this.lastName;
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
      json[r'language'] = this.language;
    return json;
  }

  /// Returns a new [UserCreateModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UserCreateModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UserCreateModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UserCreateModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UserCreateModel(
        admin: mapValueOfType<bool>(json, r'admin')!,
        email: mapValueOfType<String>(json, r'email')!,
        login: mapValueOfType<String>(json, r'login')!,
        password: mapValueOfType<String>(json, r'password'),
        firstName: mapValueOfType<String>(json, r'firstName')!,
        lastName: mapValueOfType<String>(json, r'lastName')!,
        status: mapValueOfType<String>(json, r'status'),
        language: mapValueOfType<String>(json, r'language')!,
      );
    }
    return null;
  }

  static List<UserCreateModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UserCreateModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UserCreateModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UserCreateModel> mapFromJson(dynamic json) {
    final map = <String, UserCreateModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UserCreateModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UserCreateModel-objects as value to a dart map
  static Map<String, List<UserCreateModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UserCreateModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UserCreateModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'admin',
    'email',
    'login',
    'firstName',
    'lastName',
    'language',
  };
}

