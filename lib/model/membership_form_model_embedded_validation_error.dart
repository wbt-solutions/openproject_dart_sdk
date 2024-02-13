//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class MembershipFormModelEmbeddedValidationError {
  /// Returns a new [MembershipFormModelEmbeddedValidationError] instance.
  MembershipFormModelEmbeddedValidationError({
    this.base,
    this.principal,
    this.roles,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ErrorResponse? base;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ErrorResponse? principal;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ErrorResponse? roles;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MembershipFormModelEmbeddedValidationError &&
    other.base == base &&
    other.principal == principal &&
    other.roles == roles;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (base == null ? 0 : base!.hashCode) +
    (principal == null ? 0 : principal!.hashCode) +
    (roles == null ? 0 : roles!.hashCode);

  @override
  String toString() => 'MembershipFormModelEmbeddedValidationError[base=$base, principal=$principal, roles=$roles]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.base != null) {
      json[r'base'] = this.base;
    } else {
      json[r'base'] = null;
    }
    if (this.principal != null) {
      json[r'principal'] = this.principal;
    } else {
      json[r'principal'] = null;
    }
    if (this.roles != null) {
      json[r'roles'] = this.roles;
    } else {
      json[r'roles'] = null;
    }
    return json;
  }

  /// Returns a new [MembershipFormModelEmbeddedValidationError] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MembershipFormModelEmbeddedValidationError? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MembershipFormModelEmbeddedValidationError[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MembershipFormModelEmbeddedValidationError[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MembershipFormModelEmbeddedValidationError(
        base: ErrorResponse.fromJson(json[r'base']),
        principal: ErrorResponse.fromJson(json[r'principal']),
        roles: ErrorResponse.fromJson(json[r'roles']),
      );
    }
    return null;
  }

  static List<MembershipFormModelEmbeddedValidationError> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MembershipFormModelEmbeddedValidationError>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MembershipFormModelEmbeddedValidationError.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MembershipFormModelEmbeddedValidationError> mapFromJson(dynamic json) {
    final map = <String, MembershipFormModelEmbeddedValidationError>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MembershipFormModelEmbeddedValidationError.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MembershipFormModelEmbeddedValidationError-objects as value to a dart map
  static Map<String, List<MembershipFormModelEmbeddedValidationError>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MembershipFormModelEmbeddedValidationError>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MembershipFormModelEmbeddedValidationError.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

