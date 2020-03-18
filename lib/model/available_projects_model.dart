part of swagger.api;

class Available ProjectsModel {
    Available ProjectsModel();

  @override
  String toString() {
    return 'Available ProjectsModel[]';
  }

  Available ProjectsModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Available ProjectsModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<Available ProjectsModel>() : json.map((value) => new Available ProjectsModel.fromJson(value)).toList();
  }

  static Map<String, Available ProjectsModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Available ProjectsModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Available ProjectsModel.fromJson(value));
    }
    return map;
  }
}

