//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class RootModelLinks {
  /// Returns a new [RootModelLinks] instance.
  RootModelLinks({
    required this.self,
    required this.configuration,
    required this.memberships,
    required this.priorities,
    required this.relations,
    required this.statuses,
    required this.timeEntries,
    required this.types,
    required this.user,
    required this.userPreferences,
    required this.workPackages,
  });

  RootModelLinksSelf self;

  RootModelLinksConfiguration configuration;

  RootModelLinksMemberships memberships;

  RootModelLinksPriorities priorities;

  RootModelLinksRelations relations;

  RootModelLinksStatuses statuses;

  RootModelLinksTimeEntries timeEntries;

  RootModelLinksTypes types;

  RootModelLinksUser user;

  RootModelLinksUserPreferences userPreferences;

  RootModelLinksWorkPackages workPackages;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RootModelLinks &&
    other.self == self &&
    other.configuration == configuration &&
    other.memberships == memberships &&
    other.priorities == priorities &&
    other.relations == relations &&
    other.statuses == statuses &&
    other.timeEntries == timeEntries &&
    other.types == types &&
    other.user == user &&
    other.userPreferences == userPreferences &&
    other.workPackages == workPackages;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (self.hashCode) +
    (configuration.hashCode) +
    (memberships.hashCode) +
    (priorities.hashCode) +
    (relations.hashCode) +
    (statuses.hashCode) +
    (timeEntries.hashCode) +
    (types.hashCode) +
    (user.hashCode) +
    (userPreferences.hashCode) +
    (workPackages.hashCode);

  @override
  String toString() => 'RootModelLinks[self=$self, configuration=$configuration, memberships=$memberships, priorities=$priorities, relations=$relations, statuses=$statuses, timeEntries=$timeEntries, types=$types, user=$user, userPreferences=$userPreferences, workPackages=$workPackages]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'self'] = this.self;
      json[r'configuration'] = this.configuration;
      json[r'memberships'] = this.memberships;
      json[r'priorities'] = this.priorities;
      json[r'relations'] = this.relations;
      json[r'statuses'] = this.statuses;
      json[r'time_entries'] = this.timeEntries;
      json[r'types'] = this.types;
      json[r'user'] = this.user;
      json[r'userPreferences'] = this.userPreferences;
      json[r'workPackages'] = this.workPackages;
    return json;
  }

  /// Returns a new [RootModelLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RootModelLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RootModelLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RootModelLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RootModelLinks(
        self: RootModelLinksSelf.fromJson(json[r'self'])!,
        configuration: RootModelLinksConfiguration.fromJson(json[r'configuration'])!,
        memberships: RootModelLinksMemberships.fromJson(json[r'memberships'])!,
        priorities: RootModelLinksPriorities.fromJson(json[r'priorities'])!,
        relations: RootModelLinksRelations.fromJson(json[r'relations'])!,
        statuses: RootModelLinksStatuses.fromJson(json[r'statuses'])!,
        timeEntries: RootModelLinksTimeEntries.fromJson(json[r'time_entries'])!,
        types: RootModelLinksTypes.fromJson(json[r'types'])!,
        user: RootModelLinksUser.fromJson(json[r'user'])!,
        userPreferences: RootModelLinksUserPreferences.fromJson(json[r'userPreferences'])!,
        workPackages: RootModelLinksWorkPackages.fromJson(json[r'workPackages'])!,
      );
    }
    return null;
  }

  static List<RootModelLinks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RootModelLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RootModelLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RootModelLinks> mapFromJson(dynamic json) {
    final map = <String, RootModelLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RootModelLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RootModelLinks-objects as value to a dart map
  static Map<String, List<RootModelLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RootModelLinks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RootModelLinks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'self',
    'configuration',
    'memberships',
    'priorities',
    'relations',
    'statuses',
    'time_entries',
    'types',
    'user',
    'userPreferences',
    'workPackages',
  };
}

