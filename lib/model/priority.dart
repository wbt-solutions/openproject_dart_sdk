part of swagger.api;

class Priority {
    Priority();

  @override
  String toString() {
    return 'Priority[]';
  }

  Priority.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Priority> listFromJson(List<dynamic> json) {
    return json == null ? new List<Priority>() : json.map((value) => new Priority.fromJson(value)).toList();
  }

  static Map<String, Priority> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Priority>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Priority.fromJson(value));
    }
    return map;
  }
}

