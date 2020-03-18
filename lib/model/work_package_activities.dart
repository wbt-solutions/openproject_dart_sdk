part of swagger.api;

class Work Package activities {
    Work Package activities();

  @override
  String toString() {
    return 'Work Package activities[]';
  }

  Work Package activities.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Work Package activities> listFromJson(List<dynamic> json) {
    return json == null ? new List<Work Package activities>() : json.map((value) => new Work Package activities.fromJson(value)).toList();
  }

  static Map<String, Work Package activities> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Work Package activities>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Work Package activities.fromJson(value));
    }
    return map;
  }
}

