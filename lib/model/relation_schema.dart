part of swagger.api;

class Relation schema {
    Relation schema();

  @override
  String toString() {
    return 'Relation schema[]';
  }

  Relation schema.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Relation schema> listFromJson(List<dynamic> json) {
    return json == null ? new List<Relation schema>() : json.map((value) => new Relation schema.fromJson(value)).toList();
  }

  static Map<String, Relation schema> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Relation schema>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Relation schema.fromJson(value));
    }
    return map;
  }
}

