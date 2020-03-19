part of openproject_dart_sdk.api;

class VersionLinks {
  
  Link self = null;
  
  Link definingProject = null;
  
  Link availableInProjects = null;
  VersionLinks();

  @override
  String toString() {
    return 'Version Links[self=$self, definingProject=$definingProject, availableInProjects=$availableInProjects, ]';
  }

  VersionLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    self = (json['self'] == null) ?
      null :
      Link.fromJson(json['self']);
    definingProject = (json['definingProject'] == null) ?
      null :
      Link.fromJson(json['definingProject']);
    availableInProjects = (json['availableInProjects'] == null) ?
      null :
      Link.fromJson(json['availableInProjects']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (self != null)
      json['self'] = self;
    if (definingProject != null)
      json['definingProject'] = definingProject;
    if (availableInProjects != null)
      json['availableInProjects'] = availableInProjects;
    return json;
  }

  static List<VersionLinks> listFromJson(List<dynamic> json) {
    return json == null ? List<VersionLinks>() : json.map((value) => VersionLinks.fromJson(value)).toList();
  }

  static Map<String, VersionLinks> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, VersionLinks>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = VersionLinks.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Version Links-objects as value to a dart map
  static Map<String, List<VersionLinks>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<VersionLinks>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = VersionLinks.listFromJson(value);
       });
     }
     return map;
  }
}

