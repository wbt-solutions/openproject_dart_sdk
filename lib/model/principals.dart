part of swagger.api;

class Principals {
    Principals();

  @override
  String toString() {
    return 'Principals[]';
  }

  Principals.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Principals> listFromJson(List<dynamic> json) {
    return json == null ? new List<Principals>() : json.map((value) => new Principals.fromJson(value)).toList();
  }

  static Map<String, Principals> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Principals>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Principals.fromJson(value));
    }
    return map;
  }
}

