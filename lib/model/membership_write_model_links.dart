//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class MembershipWriteModelLinks {
  /// Returns a new [MembershipWriteModelLinks] instance.
  MembershipWriteModelLinks({
    this.principal,
    this.roles = const [],
    this.project,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MembershipWriteModelLinksPrincipal? principal;

  List<MembershipReadModelLinksRolesInner> roles;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MembershipWriteModelLinksProject? project;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MembershipWriteModelLinks &&
    other.principal == principal &&
    _deepEquality.equals(other.roles, roles) &&
    other.project == project;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (principal == null ? 0 : principal!.hashCode) +
    (roles.hashCode) +
    (project == null ? 0 : project!.hashCode);

  @override
  String toString() => 'MembershipWriteModelLinks[principal=$principal, roles=$roles, project=$project]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.principal != null) {
      json[r'principal'] = this.principal;
    } else {
      json[r'principal'] = null;
    }
      json[r'roles'] = this.roles;
    if (this.project != null) {
      json[r'project'] = this.project;
    } else {
      json[r'project'] = null;
    }
    return json;
  }

  /// Returns a new [MembershipWriteModelLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MembershipWriteModelLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MembershipWriteModelLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MembershipWriteModelLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MembershipWriteModelLinks(
        principal: MembershipWriteModelLinksPrincipal.fromJson(json[r'principal']),
        roles: MembershipReadModelLinksRolesInner.listFromJson(json[r'roles']),
        project: MembershipWriteModelLinksProject.fromJson(json[r'project']),
      );
    }
    return null;
  }

  static List<MembershipWriteModelLinks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MembershipWriteModelLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MembershipWriteModelLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MembershipWriteModelLinks> mapFromJson(dynamic json) {
    final map = <String, MembershipWriteModelLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MembershipWriteModelLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MembershipWriteModelLinks-objects as value to a dart map
  static Map<String, List<MembershipWriteModelLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MembershipWriteModelLinks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MembershipWriteModelLinks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

