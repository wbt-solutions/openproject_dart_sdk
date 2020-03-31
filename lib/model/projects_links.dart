part of openproject_dart_sdk.api;

class ProjectsLinks {
  
  Link self = null;
  ProjectsLinks();

  @override
  String toString() {
    return 'ProjectsLinks[self=$self, ]';
  }

  ProjectsLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    self = (json['self'] == null) ?
      null :
      Link.fromJson(json['self']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (self != null)
      json['self'] = self;
    return json;
  }

  static List<ProjectsLinks> listFromJson(List<dynamic> json) {
    return json == null ? List<ProjectsLinks>() : json.map((value) => ProjectsLinks.fromJson(value)).toList();
  }

  static Map<String, ProjectsLinks> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ProjectsLinks>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ProjectsLinks.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ProjectsLinks-objects as value to a dart map
  static Map<String, List<ProjectsLinks>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ProjectsLinks>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ProjectsLinks.listFromJson(value);
       });
     }
     return map;
  }
}

