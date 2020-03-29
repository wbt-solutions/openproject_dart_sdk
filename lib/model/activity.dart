part of openproject_dart_sdk.api;

class Activity {
  
  int id = null;
  
  int version = null;
  
  Description comment = null;
  
  List<Description> details = [];
  
  DateTime createdAt = null;
  
  ActivityLinks links = null;
  Activity();

  @override
  String toString() {
    return 'Activity[id=$id, version=$version, comment=$comment, details=$details, createdAt=$createdAt, links=$links, ]';
  }

  Activity.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    version = json['version'];
    comment = (json['comment'] == null) ?
      null :
      Description.fromJson(json['comment']);
    details = (json['details'] == null) ?
      null :
      Description.listFromJson(json['details']);
    createdAt = (json['createdAt'] == null) ?
      null :
      DateTime.parse(json['createdAt']);
    links = (json['_links'] == null) ?
      null :
      ActivityLinks.fromJson(json['_links']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (version != null)
      json['version'] = version;
    if (comment != null)
      json['comment'] = comment;
    if (details != null)
      json['details'] = details;
    if (createdAt != null)
      json['createdAt'] = createdAt == null ? null : createdAt.toUtc().toIso8601String();
    if (links != null)
      json['_links'] = links;
    return json;
  }

  static List<Activity> listFromJson(List<dynamic> json) {
    return json == null ? List<Activity>() : json.map((value) => Activity.fromJson(value)).toList();
  }

  static Map<String, Activity> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Activity>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Activity.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Activity-objects as value to a dart map
  static Map<String, List<Activity>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Activity>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Activity.listFromJson(value);
       });
     }
     return map;
  }
}

