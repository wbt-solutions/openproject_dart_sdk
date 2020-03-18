part of swagger.api;

class Queries {
    Queries();

  @override
  String toString() {
    return 'Queries[]';
  }

  Queries.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Queries> listFromJson(List<dynamic> json) {
    return json == null ? new List<Queries>() : json.map((value) => new Queries.fromJson(value)).toList();
  }

  static Map<String, Queries> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Queries>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Queries.fromJson(value));
    }
    return map;
  }
}

