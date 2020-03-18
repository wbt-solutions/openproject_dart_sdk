part of swagger.api;

class Query FilterModel {
    Query FilterModel();

  @override
  String toString() {
    return 'Query FilterModel[]';
  }

  Query FilterModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Query FilterModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<Query FilterModel>() : json.map((value) => new Query FilterModel.fromJson(value)).toList();
  }

  static Map<String, Query FilterModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Query FilterModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Query FilterModel.fromJson(value));
    }
    return map;
  }
}

