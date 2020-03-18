part of swagger.api;

class Projects by version {
    Projects by version();

  @override
  String toString() {
    return 'Projects by version[]';
  }

  Projects by version.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Projects by version> listFromJson(List<dynamic> json) {
    return json == null ? new List<Projects by version>() : json.map((value) => new Projects by version.fromJson(value)).toList();
  }

  static Map<String, Projects by version> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Projects by version>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Projects by version.fromJson(value));
    }
    return map;
  }
}

