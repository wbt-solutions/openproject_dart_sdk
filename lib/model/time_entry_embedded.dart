part of swagger.api;

class TimeEntryEmbedded {
  
  Project project = null;
  

  Work Package workPackage = null;
  

  User user = null;
  

  Activity activity = null;
  
  TimeEntryEmbedded();

  @override
  String toString() {
    return 'TimeEntryEmbedded[project=$project, workPackage=$workPackage, user=$user, activity=$activity, ]';
  }

  TimeEntryEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    project =
      
      
      new Project.fromJson(json['project'])
;
    workPackage =
      
      
      new Work Package.fromJson(json['workPackage'])
;
    user =
      
      
      new User.fromJson(json['user'])
;
    activity =
      
      
      new Activity.fromJson(json['activity'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'project': project,
      'workPackage': workPackage,
      'user': user,
      'activity': activity
     };
  }

  static List<TimeEntryEmbedded> listFromJson(List<dynamic> json) {
    return json == null ? new List<TimeEntryEmbedded>() : json.map((value) => new TimeEntryEmbedded.fromJson(value)).toList();
  }

  static Map<String, TimeEntryEmbedded> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TimeEntryEmbedded>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TimeEntryEmbedded.fromJson(value));
    }
    return map;
  }
}

