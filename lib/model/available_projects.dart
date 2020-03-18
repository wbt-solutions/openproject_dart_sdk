part of swagger.api;

class Available Projects {
    Available Projects();

  @override
  String toString() {
    return 'Available Projects[]';
  }

  Available Projects.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Available Projects> listFromJson(List<dynamic> json) {
    return json == null ? new List<Available Projects>() : json.map((value) => new Available Projects.fromJson(value)).toList();
  }

  static Map<String, Available Projects> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Available Projects>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Available Projects.fromJson(value));
    }
    return map;
  }
}

