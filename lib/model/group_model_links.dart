//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class GroupModelLinks {
  /// Returns a new [GroupModelLinks] instance.
  GroupModelLinks({
    required this.self,
    this.delete,
    this.updateImmediately,
    this.memberships,
    this.members = const [],
  });

  GroupModelLinksSelf self;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GroupModelLinksDelete? delete;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GroupModelLinksUpdateImmediately? updateImmediately;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GroupModelLinksMemberships? memberships;

  List<GroupModelLinksMembersInner> members;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GroupModelLinks &&
    other.self == self &&
    other.delete == delete &&
    other.updateImmediately == updateImmediately &&
    other.memberships == memberships &&
    _deepEquality.equals(other.members, members);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (self.hashCode) +
    (delete == null ? 0 : delete!.hashCode) +
    (updateImmediately == null ? 0 : updateImmediately!.hashCode) +
    (memberships == null ? 0 : memberships!.hashCode) +
    (members.hashCode);

  @override
  String toString() => 'GroupModelLinks[self=$self, delete=$delete, updateImmediately=$updateImmediately, memberships=$memberships, members=$members]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'self'] = this.self;
    if (this.delete != null) {
      json[r'delete'] = this.delete;
    } else {
      json[r'delete'] = null;
    }
    if (this.updateImmediately != null) {
      json[r'updateImmediately'] = this.updateImmediately;
    } else {
      json[r'updateImmediately'] = null;
    }
    if (this.memberships != null) {
      json[r'memberships'] = this.memberships;
    } else {
      json[r'memberships'] = null;
    }
      json[r'members'] = this.members;
    return json;
  }

  /// Returns a new [GroupModelLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GroupModelLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GroupModelLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GroupModelLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GroupModelLinks(
        self: GroupModelLinksSelf.fromJson(json[r'self'])!,
        delete: GroupModelLinksDelete.fromJson(json[r'delete']),
        updateImmediately: GroupModelLinksUpdateImmediately.fromJson(json[r'updateImmediately']),
        memberships: GroupModelLinksMemberships.fromJson(json[r'memberships']),
        members: GroupModelLinksMembersInner.listFromJson(json[r'members']),
      );
    }
    return null;
  }

  static List<GroupModelLinks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GroupModelLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GroupModelLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GroupModelLinks> mapFromJson(dynamic json) {
    final map = <String, GroupModelLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GroupModelLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GroupModelLinks-objects as value to a dart map
  static Map<String, List<GroupModelLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GroupModelLinks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GroupModelLinks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'self',
  };
}

