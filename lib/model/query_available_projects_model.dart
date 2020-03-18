part of swagger.api;

class Query Available ProjectsModel {
    Query Available ProjectsModel();

  @override
  String toString() {
    return 'Query Available ProjectsModel[]';
  }

  Query Available ProjectsModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Query Available ProjectsModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<Query Available ProjectsModel>() : json.map((value) => new Query Available ProjectsModel.fromJson(value)).toList();
  }

  static Map<String, Query Available ProjectsModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Query Available ProjectsModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Query Available ProjectsModel.fromJson(value));
    }
    return map;
  }
}

