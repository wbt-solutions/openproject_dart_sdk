part of swagger.api;

class Query Column {
    Query Column();

  @override
  String toString() {
    return 'Query Column[]';
  }

  Query Column.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Query Column> listFromJson(List<dynamic> json) {
    return json == null ? new List<Query Column>() : json.map((value) => new Query Column.fromJson(value)).toList();
  }

  static Map<String, Query Column> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Query Column>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Query Column.fromJson(value));
    }
    return map;
  }
}

