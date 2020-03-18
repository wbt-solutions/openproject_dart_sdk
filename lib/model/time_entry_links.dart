part of swagger.api;

class Time entry Links {
  
  Link self = null;
  

  Link project = null;
  

  Link workPackage = null;
  

  Link user = null;
  

  Link activity = null;
  
  Time entry Links();

  @override
  String toString() {
    return 'Time entry Links[self=$self, project=$project, workPackage=$workPackage, user=$user, activity=$activity, ]';
  }

  Time entry Links.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    self =
      
      
      new Link.fromJson(json['self'])
;
    project =
      
      
      new Link.fromJson(json['project'])
;
    workPackage =
      
      
      new Link.fromJson(json['workPackage'])
;
    user =
      
      
      new Link.fromJson(json['user'])
;
    activity =
      
      
      new Link.fromJson(json['activity'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'self': self,
      'project': project,
      'workPackage': workPackage,
      'user': user,
      'activity': activity
     };
  }

  static List<Time entry Links> listFromJson(List<dynamic> json) {
    return json == null ? new List<Time entry Links>() : json.map((value) => new Time entry Links.fromJson(value)).toList();
  }

  static Map<String, Time entry Links> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Time entry Links>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Time entry Links.fromJson(value));
    }
    return map;
  }
}

