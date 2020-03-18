part of swagger.api;

class ProjectsModel {
    ProjectsModel();

  @override
  String toString() {
    return 'ProjectsModel[]';
  }

  ProjectsModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<ProjectsModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<ProjectsModel>() : json.map((value) => new ProjectsModel.fromJson(value)).toList();
  }

  static Map<String, ProjectsModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ProjectsModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ProjectsModel.fromJson(value));
    }
    return map;
  }
}

