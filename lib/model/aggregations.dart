part of swagger.api;

class Aggregations {
    Aggregations();

  @override
  String toString() {
    return 'Aggregations[]';
  }

  Aggregations.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Aggregations> listFromJson(List<dynamic> json) {
    return json == null ? new List<Aggregations>() : json.map((value) => new Aggregations.fromJson(value)).toList();
  }

  static Map<String, Aggregations> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Aggregations>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Aggregations.fromJson(value));
    }
    return map;
  }
}

