//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class MembershipReadModelEmbedded {
  /// Returns a new [MembershipReadModelEmbedded] instance.
  MembershipReadModelEmbedded({
    this.project,
    this.principal,
    this.roles = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ProjectModel? project;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MembershipReadModelEmbeddedPrincipal? principal;

  List<RoleModel> roles;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MembershipReadModelEmbedded &&
    other.project == project &&
    other.principal == principal &&
    _deepEquality.equals(other.roles, roles);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (project == null ? 0 : project!.hashCode) +
    (principal == null ? 0 : principal!.hashCode) +
    (roles.hashCode);

  @override
  String toString() => 'MembershipReadModelEmbedded[project=$project, principal=$principal, roles=$roles]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.project != null) {
      json[r'project'] = this.project;
    } else {
      json[r'project'] = null;
    }
    if (this.principal != null) {
      json[r'principal'] = this.principal;
    } else {
      json[r'principal'] = null;
    }
      json[r'roles'] = this.roles;
    return json;
  }

  /// Returns a new [MembershipReadModelEmbedded] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MembershipReadModelEmbedded? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MembershipReadModelEmbedded[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MembershipReadModelEmbedded[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MembershipReadModelEmbedded(
        project: ProjectModel.fromJson(json[r'project']),
        principal: MembershipReadModelEmbeddedPrincipal.fromJson(json[r'principal']),
        roles: RoleModel.listFromJson(json[r'roles']),
      );
    }
    return null;
  }

  static List<MembershipReadModelEmbedded> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MembershipReadModelEmbedded>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MembershipReadModelEmbedded.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MembershipReadModelEmbedded> mapFromJson(dynamic json) {
    final map = <String, MembershipReadModelEmbedded>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MembershipReadModelEmbedded.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MembershipReadModelEmbedded-objects as value to a dart map
  static Map<String, List<MembershipReadModelEmbedded>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MembershipReadModelEmbedded>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MembershipReadModelEmbedded.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

