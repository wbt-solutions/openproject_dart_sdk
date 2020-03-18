part of swagger.api;

class QueryModel {
    QueryModel();

  @override
  String toString() {
    return 'QueryModel[]';
  }

  QueryModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<QueryModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<QueryModel>() : json.map((value) => new QueryModel.fromJson(value)).toList();
  }

  static Map<String, QueryModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, QueryModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new QueryModel.fromJson(value));
    }
    return map;
  }
}

