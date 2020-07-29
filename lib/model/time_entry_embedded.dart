part of openproject_dart_sdk.api;

class TimeEntryEmbedded {

  Project project;

  WorkPackage workPackage;

  User user;

  Activity activity;

  TimeEntryEmbedded({
    this.project,
    this.workPackage,
    this.user,
    this.activity,
  });

  @override
  String toString() {
    return 'TimeEntryEmbedded[project=$project, workPackage=$workPackage, user=$user, activity=$activity, ]';
  }

  TimeEntryEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    project = (json['project'] == null) ?
      null :
      Project.fromJson(json['project']);
    workPackage = (json['workPackage'] == null) ?
      null :
      WorkPackage.fromJson(json['workPackage']);
    user = (json['user'] == null) ?
      null :
      User.fromJson(json['user']);
    activity = (json['activity'] == null) ?
      null :
      Activity.fromJson(json['activity']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (project != null)
      json['project'] = project;
    if (workPackage != null)
      json['workPackage'] = workPackage;
    if (user != null)
      json['user'] = user;
    if (activity != null)
      json['activity'] = activity;
    return json;
  }

  static List<TimeEntryEmbedded> listFromJson(List<dynamic> json) {
    return json == null ? List<TimeEntryEmbedded>() : json.map((value) => TimeEntryEmbedded.fromJson(value)).toList();
  }

  static Map<String, TimeEntryEmbedded> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, TimeEntryEmbedded>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TimeEntryEmbedded.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TimeEntryEmbedded-objects as value to a dart map
  static Map<String, List<TimeEntryEmbedded>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<TimeEntryEmbedded>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = TimeEntryEmbedded.listFromJson(value);
      });
    }
    return map;
  }
}

