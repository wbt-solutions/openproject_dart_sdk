part of swagger.api;

class Query ColumnModel {
    Query ColumnModel();

  @override
  String toString() {
    return 'Query ColumnModel[]';
  }

  Query ColumnModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Query ColumnModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<Query ColumnModel>() : json.map((value) => new Query ColumnModel.fromJson(value)).toList();
  }

  static Map<String, Query ColumnModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Query ColumnModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Query ColumnModel.fromJson(value));
    }
    return map;
  }
}

