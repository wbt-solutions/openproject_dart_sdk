part of swagger.api;

class Priorities {
    Priorities();

  @override
  String toString() {
    return 'Priorities[]';
  }

  Priorities.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Priorities> listFromJson(List<dynamic> json) {
    return json == null ? new List<Priorities>() : json.map((value) => new Priorities.fromJson(value)).toList();
  }

  static Map<String, Priorities> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Priorities>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Priorities.fromJson(value));
    }
    return map;
  }
}

