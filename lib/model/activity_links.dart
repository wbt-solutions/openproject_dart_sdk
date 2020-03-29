part of openproject_dart_sdk.api;

class ActivityLinks {
  
  Link self = null;
  
  Link workPackage = null;
  
  Link user = null;
  ActivityLinks();

  @override
  String toString() {
    return 'ActivityLinks[self=$self, workPackage=$workPackage, user=$user, ]';
  }

  ActivityLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    self = (json['self'] == null) ?
      null :
      Link.fromJson(json['self']);
    workPackage = (json['workPackage'] == null) ?
      null :
      Link.fromJson(json['workPackage']);
    user = (json['user'] == null) ?
      null :
      Link.fromJson(json['user']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (self != null)
      json['self'] = self;
    if (workPackage != null)
      json['workPackage'] = workPackage;
    if (user != null)
      json['user'] = user;
    return json;
  }

  static List<ActivityLinks> listFromJson(List<dynamic> json) {
    return json == null ? List<ActivityLinks>() : json.map((value) => ActivityLinks.fromJson(value)).toList();
  }

  static Map<String, ActivityLinks> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ActivityLinks>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ActivityLinks.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ActivityLinks-objects as value to a dart map
  static Map<String, List<ActivityLinks>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ActivityLinks>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ActivityLinks.listFromJson(value);
       });
     }
     return map;
  }
}

