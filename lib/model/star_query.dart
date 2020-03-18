part of swagger.api;

class Star Query {
    Star Query();

  @override
  String toString() {
    return 'Star Query[]';
  }

  Star Query.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Star Query> listFromJson(List<dynamic> json) {
    return json == null ? new List<Star Query>() : json.map((value) => new Star Query.fromJson(value)).toList();
  }

  static Map<String, Star Query> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Star Query>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Star Query.fromJson(value));
    }
    return map;
  }
}

