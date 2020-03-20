part of openproject_dart_sdk.api;

class Project {
  
  int id = null;
  
  String name = null;
  
  String identifier = null;
  
  bool active = null;
  
  String status = null;
  //enum statusEnum {  on track,  at risk,  off track,  };{
  
  bool public = null;
  
  DateTime spentOn = null;
  
  DateTime createdAt = null;
  
  DateTime updatedAt = null;
  
  TimeEntryEmbedded embedded = null;
  Project();

  @override
  String toString() {
    return 'Project[id=$id, name=$name, identifier=$identifier, active=$active, status=$status, public=$public, spentOn=$spentOn, createdAt=$createdAt, updatedAt=$updatedAt, embedded=$embedded, ]';
  }

  Project.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
    identifier = json['identifier'];
    active = json['active'];
    status = json['status'];
    public = json['public'];
    spentOn = (json['spentOn'] == null) ?
      null :
      DateTime.parse(json['spentOn']);
    createdAt = (json['createdAt'] == null) ?
      null :
      DateTime.parse(json['createdAt']);
    updatedAt = (json['updatedAt'] == null) ?
      null :
      DateTime.parse(json['updatedAt']);
    embedded = (json['_embedded'] == null) ?
      null :
      TimeEntryEmbedded.fromJson(json['_embedded']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (identifier != null)
      json['identifier'] = identifier;
    if (active != null)
      json['active'] = active;
    if (status != null)
      json['status'] = status;
    if (public != null)
      json['public'] = public;
    if (spentOn != null)
      json['spentOn'] = spentOn == null ? null : spentOn.toUtc().toIso8601String();
    if (createdAt != null)
      json['createdAt'] = createdAt == null ? null : createdAt.toUtc().toIso8601String();
    if (updatedAt != null)
      json['updatedAt'] = updatedAt == null ? null : updatedAt.toUtc().toIso8601String();
    if (embedded != null)
      json['_embedded'] = embedded;
    return json;
  }

  static List<Project> listFromJson(List<dynamic> json) {
    return json == null ? List<Project>() : json.map((value) => Project.fromJson(value)).toList();
  }

  static Map<String, Project> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Project>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Project.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Project-objects as value to a dart map
  static Map<String, List<Project>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Project>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Project.listFromJson(value);
       });
     }
     return map;
  }
}

