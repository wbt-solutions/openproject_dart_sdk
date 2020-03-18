part of swagger.api;

class Query Sort ByModel {
    Query Sort ByModel();

  @override
  String toString() {
    return 'Query Sort ByModel[]';
  }

  Query Sort ByModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Query Sort ByModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<Query Sort ByModel>() : json.map((value) => new Query Sort ByModel.fromJson(value)).toList();
  }

  static Map<String, Query Sort ByModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Query Sort ByModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Query Sort ByModel.fromJson(value));
    }
    return map;
  }
}

