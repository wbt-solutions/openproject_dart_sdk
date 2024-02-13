//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class MembershipFormModelLinks {
  /// Returns a new [MembershipFormModelLinks] instance.
  MembershipFormModelLinks({
    required this.self,
    this.validate = const [],
    required this.commit,
  });

  MembershipFormModelLinksSelf self;

  List<MembershipFormModelLinksValidateInner> validate;

  MembershipFormModelLinksCommit commit;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MembershipFormModelLinks &&
    other.self == self &&
    _deepEquality.equals(other.validate, validate) &&
    other.commit == commit;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (self.hashCode) +
    (validate.hashCode) +
    (commit.hashCode);

  @override
  String toString() => 'MembershipFormModelLinks[self=$self, validate=$validate, commit=$commit]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'self'] = this.self;
      json[r'validate'] = this.validate;
      json[r'commit'] = this.commit;
    return json;
  }

  /// Returns a new [MembershipFormModelLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MembershipFormModelLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MembershipFormModelLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MembershipFormModelLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MembershipFormModelLinks(
        self: MembershipFormModelLinksSelf.fromJson(json[r'self'])!,
        validate: MembershipFormModelLinksValidateInner.listFromJson(json[r'validate']),
        commit: MembershipFormModelLinksCommit.fromJson(json[r'commit'])!,
      );
    }
    return null;
  }

  static List<MembershipFormModelLinks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MembershipFormModelLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MembershipFormModelLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MembershipFormModelLinks> mapFromJson(dynamic json) {
    final map = <String, MembershipFormModelLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MembershipFormModelLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MembershipFormModelLinks-objects as value to a dart map
  static Map<String, List<MembershipFormModelLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MembershipFormModelLinks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MembershipFormModelLinks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'self',
    'validate',
    'commit',
  };
}

