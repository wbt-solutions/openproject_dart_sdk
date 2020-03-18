part of swagger.api;

class Relation {
    Relation();

  @override
  String toString() {
    return 'Relation[]';
  }

  Relation.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Relation> listFromJson(List<dynamic> json) {
    return json == null ? new List<Relation>() : json.map((value) => new Relation.fromJson(value)).toList();
  }

  static Map<String, Relation> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Relation>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Relation.fromJson(value));
    }
    return map;
  }
}

