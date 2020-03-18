part of swagger.api;

class Query Filter Instance Schema {
    Query Filter Instance Schema();

  @override
  String toString() {
    return 'Query Filter Instance Schema[]';
  }

  Query Filter Instance Schema.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Query Filter Instance Schema> listFromJson(List<dynamic> json) {
    return json == null ? new List<Query Filter Instance Schema>() : json.map((value) => new Query Filter Instance Schema.fromJson(value)).toList();
  }

  static Map<String, Query Filter Instance Schema> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Query Filter Instance Schema>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Query Filter Instance Schema.fromJson(value));
    }
    return map;
  }
}

