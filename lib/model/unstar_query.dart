part of swagger.api;

class Unstar Query {
    Unstar Query();

  @override
  String toString() {
    return 'Unstar Query[]';
  }

  Unstar Query.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Unstar Query> listFromJson(List<dynamic> json) {
    return json == null ? new List<Unstar Query>() : json.map((value) => new Unstar Query.fromJson(value)).toList();
  }

  static Map<String, Unstar Query> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Unstar Query>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Unstar Query.fromJson(value));
    }
    return map;
  }
}

