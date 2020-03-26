part of openproject_dart_sdk.api;

class TimeEntryLinks {
  
  Link self = null;
  
  Link project = null;
  
  Link workPackage = null;
  
  Link user = null;
  
  Link activity = null;
  TimeEntryLinks();

  @override
  String toString() {
    return 'TimeEntryLinks[self=$self, project=$project, workPackage=$workPackage, user=$user, activity=$activity, ]';
  }

  TimeEntryLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    self = (json['self'] == null) ?
      null :
      Link.fromJson(json['self']);
    project = (json['project'] == null) ?
      null :
      Link.fromJson(json['project']);
    workPackage = (json['workPackage'] == null) ?
      null :
      Link.fromJson(json['workPackage']);
    user = (json['user'] == null) ?
      null :
      Link.fromJson(json['user']);
    activity = (json['activity'] == null) ?
      null :
      Link.fromJson(json['activity']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (self != null)
      json['self'] = self;
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

  static List<TimeEntryLinks> listFromJson(List<dynamic> json) {
    return json == null ? List<TimeEntryLinks>() : json.map((value) => TimeEntryLinks.fromJson(value)).toList();
  }

  static Map<String, TimeEntryLinks> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TimeEntryLinks>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TimeEntryLinks.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TimeEntryLinks-objects as value to a dart map
  static Map<String, List<TimeEntryLinks>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<TimeEntryLinks>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = TimeEntryLinks.listFromJson(value);
       });
     }
     return map;
  }
}

