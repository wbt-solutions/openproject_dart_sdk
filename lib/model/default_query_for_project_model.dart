part of swagger.api;

class Default Query for ProjectModel {
    Default Query for ProjectModel();

  @override
  String toString() {
    return 'Default Query for ProjectModel[]';
  }

  Default Query for ProjectModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Default Query for ProjectModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<Default Query for ProjectModel>() : json.map((value) => new Default Query for ProjectModel.fromJson(value)).toList();
  }

  static Map<String, Default Query for ProjectModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Default Query for ProjectModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Default Query for ProjectModel.fromJson(value));
    }
    return map;
  }
}

