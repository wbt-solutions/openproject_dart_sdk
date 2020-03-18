part of swagger.api;

class ProjectModel {
    ProjectModel();

  @override
  String toString() {
    return 'ProjectModel[]';
  }

  ProjectModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<ProjectModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<ProjectModel>() : json.map((value) => new ProjectModel.fromJson(value)).toList();
  }

  static Map<String, ProjectModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ProjectModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ProjectModel.fromJson(value));
    }
    return map;
  }
}

