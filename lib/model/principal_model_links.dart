//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class PrincipalModelLinks {
  /// Returns a new [PrincipalModelLinks] instance.
  PrincipalModelLinks({
    required this.self,
    this.memberships,
  });

  PrincipalModelLinksSelf self;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  PrincipalModelLinksMemberships? memberships;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PrincipalModelLinks &&
    other.self == self &&
    other.memberships == memberships;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (self.hashCode) +
    (memberships == null ? 0 : memberships!.hashCode);

  @override
  String toString() => 'PrincipalModelLinks[self=$self, memberships=$memberships]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'self'] = this.self;
    if (this.memberships != null) {
      json[r'memberships'] = this.memberships;
    } else {
      json[r'memberships'] = null;
    }
    return json;
  }

  /// Returns a new [PrincipalModelLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PrincipalModelLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PrincipalModelLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PrincipalModelLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PrincipalModelLinks(
        self: PrincipalModelLinksSelf.fromJson(json[r'self'])!,
        memberships: PrincipalModelLinksMemberships.fromJson(json[r'memberships']),
      );
    }
    return null;
  }

  static List<PrincipalModelLinks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PrincipalModelLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PrincipalModelLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PrincipalModelLinks> mapFromJson(dynamic json) {
    final map = <String, PrincipalModelLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PrincipalModelLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PrincipalModelLinks-objects as value to a dart map
  static Map<String, List<PrincipalModelLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PrincipalModelLinks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PrincipalModelLinks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'self',
  };
}

