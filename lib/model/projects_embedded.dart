part of swagger.api;

class ProjectsEmbedded {
  
  List<Project> elements = [];
  
  ProjectsEmbedded();

  @override
  String toString() {
    return 'ProjectsEmbedded[elements=$elements, ]';
  }

  ProjectsEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    elements =
      Project.listFromJson(json['elements'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'elements': elements
     };
  }

  static List<ProjectsEmbedded> listFromJson(List<dynamic> json) {
    return json == null ? new List<ProjectsEmbedded>() : json.map((value) => new ProjectsEmbedded.fromJson(value)).toList();
  }

  static Map<String, ProjectsEmbedded> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ProjectsEmbedded>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ProjectsEmbedded.fromJson(value));
    }
    return map;
  }
}

