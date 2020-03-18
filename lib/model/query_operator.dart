part of swagger.api;

class Query Operator {
    Query Operator();

  @override
  String toString() {
    return 'Query Operator[]';
  }

  Query Operator.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Query Operator> listFromJson(List<dynamic> json) {
    return json == null ? new List<Query Operator>() : json.map((value) => new Query Operator.fromJson(value)).toList();
  }

  static Map<String, Query Operator> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Query Operator>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Query Operator.fromJson(value));
    }
    return map;
  }
}

