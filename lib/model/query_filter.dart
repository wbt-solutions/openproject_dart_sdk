part of swagger.api;

class Query Filter {
    Query Filter();

  @override
  String toString() {
    return 'Query Filter[]';
  }

  Query Filter.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Query Filter> listFromJson(List<dynamic> json) {
    return json == null ? new List<Query Filter>() : json.map((value) => new Query Filter.fromJson(value)).toList();
  }

  static Map<String, Query Filter> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Query Filter>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Query Filter.fromJson(value));
    }
    return map;
  }
}

