part of swagger.api;

class Textile {
    Textile();

  @override
  String toString() {
    return 'Textile[]';
  }

  Textile.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Textile> listFromJson(List<dynamic> json) {
    return json == null ? new List<Textile>() : json.map((value) => new Textile.fromJson(value)).toList();
  }

  static Map<String, Textile> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Textile>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Textile.fromJson(value));
    }
    return map;
  }
}

