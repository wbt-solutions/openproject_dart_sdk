part of openproject_dart_sdk.api;

class TimeEntriesActivityEmbedded {
  
  List<Project> projects = const [];

  TimeEntriesActivityEmbedded({
    this.projects = const [],
  });

  @override
  String toString() {
    return 'TimeEntriesActivityEmbedded[projects=$projects, ]';
  }

  TimeEntriesActivityEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    projects = (json['projects'] == null) ?
      null :
      Project.listFromJson(json['projects']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (projects != null)
      json['projects'] = projects;
    return json;
  }

  static List<TimeEntriesActivityEmbedded> listFromJson(List<dynamic> json) {
    return json == null ? List<TimeEntriesActivityEmbedded>() : json.map((value) => TimeEntriesActivityEmbedded.fromJson(value)).toList();
  }

  static Map<String, TimeEntriesActivityEmbedded> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, TimeEntriesActivityEmbedded>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TimeEntriesActivityEmbedded.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TimeEntriesActivityEmbedded-objects as value to a dart map
  static Map<String, List<TimeEntriesActivityEmbedded>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<TimeEntriesActivityEmbedded>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = TimeEntriesActivityEmbedded.listFromJson(value);
      });
    }
    return map;
  }
}

