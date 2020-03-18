part of swagger.api;

class Query Available Projects {
    Query Available Projects();

  @override
  String toString() {
    return 'Query Available Projects[]';
  }

  Query Available Projects.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Query Available Projects> listFromJson(List<dynamic> json) {
    return json == null ? new List<Query Available Projects>() : json.map((value) => new Query Available Projects.fromJson(value)).toList();
  }

  static Map<String, Query Available Projects> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Query Available Projects>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Query Available Projects.fromJson(value));
    }
    return map;
  }
}

