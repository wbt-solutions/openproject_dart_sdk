part of swagger.api;

class Query Filter Instance Schemas For ProjectModel {
    Query Filter Instance Schemas For ProjectModel();

  @override
  String toString() {
    return 'Query Filter Instance Schemas For ProjectModel[]';
  }

  Query Filter Instance Schemas For ProjectModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Query Filter Instance Schemas For ProjectModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<Query Filter Instance Schemas For ProjectModel>() : json.map((value) => new Query Filter Instance Schemas For ProjectModel.fromJson(value)).toList();
  }

  static Map<String, Query Filter Instance Schemas For ProjectModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Query Filter Instance Schemas For ProjectModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Query Filter Instance Schemas For ProjectModel.fromJson(value));
    }
    return map;
  }
}

