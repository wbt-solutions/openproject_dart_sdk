part of swagger.api;

class Versions by Project {
    Versions by Project();

  @override
  String toString() {
    return 'Versions by Project[]';
  }

  Versions by Project.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Versions by Project> listFromJson(List<dynamic> json) {
    return json == null ? new List<Versions by Project>() : json.map((value) => new Versions by Project.fromJson(value)).toList();
  }

  static Map<String, Versions by Project> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Versions by Project>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Versions by Project.fromJson(value));
    }
    return map;
  }
}

