//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class TimeEntryLinks {
  /// Returns a new [TimeEntryLinks] instance.
  TimeEntryLinks({
    this.self,
    this.project,
    this.workPackage,
    this.user,
    this.activity,
  });

  Link self;

  Link project;

  Link workPackage;

  Link user;

  Link activity;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TimeEntryLinks &&
     other.self == self &&
     other.project == project &&
     other.workPackage == workPackage &&
     other.user == user &&
     other.activity == activity;

  @override
  int get hashCode =>
    (self == null ? 0 : self.hashCode) +
    (project == null ? 0 : project.hashCode) +
    (workPackage == null ? 0 : workPackage.hashCode) +
    (user == null ? 0 : user.hashCode) +
    (activity == null ? 0 : activity.hashCode);

  @override
  String toString() => 'TimeEntryLinks[self=$self, project=$project, workPackage=$workPackage, user=$user, activity=$activity]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (self != null) {
      json[r'self'] = self;
    }
    if (project != null) {
      json[r'project'] = project;
    }
    if (workPackage != null) {
      json[r'workPackage'] = workPackage;
    }
    if (user != null) {
      json[r'user'] = user;
    }
    if (activity != null) {
      json[r'activity'] = activity;
    }
    return json;
  }

  /// Returns a new [TimeEntryLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static TimeEntryLinks fromJson(Map<String, dynamic> json) => json == null
    ? null
    : TimeEntryLinks(
        self: Link.fromJson(json[r'self']),
        project: Link.fromJson(json[r'project']),
        workPackage: Link.fromJson(json[r'workPackage']),
        user: Link.fromJson(json[r'user']),
        activity: Link.fromJson(json[r'activity']),
    );

  static List<TimeEntryLinks> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <TimeEntryLinks>[]
      : json.map((dynamic value) => TimeEntryLinks.fromJson(value)).toList(growable: true == growable);

  static Map<String, TimeEntryLinks> mapFromJson(Map<String, dynamic> json) {
    final map = <String, TimeEntryLinks>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = TimeEntryLinks.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TimeEntryLinks-objects as value to a dart map
  static Map<String, List<TimeEntryLinks>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<TimeEntryLinks>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = TimeEntryLinks.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

