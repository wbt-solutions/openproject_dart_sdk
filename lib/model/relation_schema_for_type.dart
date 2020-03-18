part of swagger.api;

class Relation schema for type {
    Relation schema for type();

  @override
  String toString() {
    return 'Relation schema for type[]';
  }

  Relation schema for type.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Relation schema for type> listFromJson(List<dynamic> json) {
    return json == null ? new List<Relation schema for type>() : json.map((value) => new Relation schema for type.fromJson(value)).toList();
  }

  static Map<String, Relation schema for type> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Relation schema for type>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Relation schema for type.fromJson(value));
    }
    return map;
  }
}

