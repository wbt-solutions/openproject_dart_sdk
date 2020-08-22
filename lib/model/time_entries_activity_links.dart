part of openproject_dart_sdk.api;

class TimeEntriesActivityLinks {
  
  Link self;
  
  List<Link> projects = const [];

  TimeEntriesActivityLinks({
    this.self,
    this.projects = const [],
  });

  @override
  String toString() {
    return 'TimeEntriesActivityLinks[self=$self, projects=$projects, ]';
  }

  TimeEntriesActivityLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    self = (json['self'] == null) ?
      null :
      Link.fromJson(json['self']);
    projects = (json['projects'] == null) ?
      null :
      Link.listFromJson(json['projects']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (self != null)
      json['self'] = self;
    if (projects != null)
      json['projects'] = projects;
    return json;
  }

  static List<TimeEntriesActivityLinks> listFromJson(List<dynamic> json) {
    return json == null ? List<TimeEntriesActivityLinks>() : json.map((value) => TimeEntriesActivityLinks.fromJson(value)).toList();
  }

  static Map<String, TimeEntriesActivityLinks> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, TimeEntriesActivityLinks>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TimeEntriesActivityLinks.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TimeEntriesActivityLinks-objects as value to a dart map
  static Map<String, List<TimeEntriesActivityLinks>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<TimeEntriesActivityLinks>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = TimeEntriesActivityLinks.listFromJson(value);
      });
    }
    return map;
  }
}

