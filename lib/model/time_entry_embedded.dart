//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class TimeEntryEmbedded {
  /// Returns a new [TimeEntryEmbedded] instance.
  TimeEntryEmbedded({
    this.project,
    this.workPackage,
    this.user,
    this.activity,
  });

  Project project;

  WorkPackage workPackage;

  User user;

  Activity activity;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TimeEntryEmbedded &&
     other.project == project &&
     other.workPackage == workPackage &&
     other.user == user &&
     other.activity == activity;

  @override
  int get hashCode =>
    (project == null ? 0 : project.hashCode) +
    (workPackage == null ? 0 : workPackage.hashCode) +
    (user == null ? 0 : user.hashCode) +
    (activity == null ? 0 : activity.hashCode);

  @override
  String toString() => 'TimeEntryEmbedded[project=$project, workPackage=$workPackage, user=$user, activity=$activity]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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

  /// Returns a new [TimeEntryEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static TimeEntryEmbedded fromJson(Map<String, dynamic> json) => json == null
    ? null
    : TimeEntryEmbedded(
        project: Project.fromJson(json[r'project']),
        workPackage: WorkPackage.fromJson(json[r'workPackage']),
        user: User.fromJson(json[r'user']),
        activity: Activity.fromJson(json[r'activity']),
    );

  static List<TimeEntryEmbedded> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <TimeEntryEmbedded>[]
      : json.map((v) => TimeEntryEmbedded.fromJson(v)).toList(growable: true == growable);

  static Map<String, TimeEntryEmbedded> mapFromJson(Map<String, dynamic> json) {
    final map = <String, TimeEntryEmbedded>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = TimeEntryEmbedded.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of TimeEntryEmbedded-objects as value to a dart map
  static Map<String, List<TimeEntryEmbedded>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<TimeEntryEmbedded>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = TimeEntryEmbedded.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

