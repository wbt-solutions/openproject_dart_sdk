part of swagger.api;

class Query Filter Instance SchemaModel {
    Query Filter Instance SchemaModel();

  @override
  String toString() {
    return 'Query Filter Instance SchemaModel[]';
  }

  Query Filter Instance SchemaModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Query Filter Instance SchemaModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<Query Filter Instance SchemaModel>() : json.map((value) => new Query Filter Instance SchemaModel.fromJson(value)).toList();
  }

  static Map<String, Query Filter Instance SchemaModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Query Filter Instance SchemaModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Query Filter Instance SchemaModel.fromJson(value));
    }
    return map;
  }
}

