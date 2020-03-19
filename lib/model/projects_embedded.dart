part of openproject_dart_sdk.api;

class ProjectsEmbedded {
  
  List<Project> elements = [];
  ProjectsEmbedded();

  @override
  String toString() {
    return 'ProjectsEmbedded[elements=$elements, ]';
  }

  ProjectsEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    elements = (json['elements'] == null) ?
      null :
      Project.listFromJson(json['elements']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (elements != null)
      json['elements'] = elements;
    return json;
  }

  static List<ProjectsEmbedded> listFromJson(List<dynamic> json) {
    return json == null ? List<ProjectsEmbedded>() : json.map((value) => ProjectsEmbedded.fromJson(value)).toList();
  }

  static Map<String, ProjectsEmbedded> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ProjectsEmbedded>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ProjectsEmbedded.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ProjectsEmbedded-objects as value to a dart map
  static Map<String, List<ProjectsEmbedded>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ProjectsEmbedded>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ProjectsEmbedded.listFromJson(value);
       });
     }
     return map;
  }
}

