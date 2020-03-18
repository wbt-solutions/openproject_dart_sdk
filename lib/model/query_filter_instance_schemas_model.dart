part of swagger.api;

class Query Filter Instance SchemasModel {
    Query Filter Instance SchemasModel();

  @override
  String toString() {
    return 'Query Filter Instance SchemasModel[]';
  }

  Query Filter Instance SchemasModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Query Filter Instance SchemasModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<Query Filter Instance SchemasModel>() : json.map((value) => new Query Filter Instance SchemasModel.fromJson(value)).toList();
  }

  static Map<String, Query Filter Instance SchemasModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Query Filter Instance SchemasModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Query Filter Instance SchemasModel.fromJson(value));
    }
    return map;
  }
}

