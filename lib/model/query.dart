part of swagger.api;

class Query {
    Query();

  @override
  String toString() {
    return 'Query[]';
  }

  Query.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Query> listFromJson(List<dynamic> json) {
    return json == null ? new List<Query>() : json.map((value) => new Query.fromJson(value)).toList();
  }

  static Map<String, Query> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Query>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Query.fromJson(value));
    }
    return map;
  }
}

