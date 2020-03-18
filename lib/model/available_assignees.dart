part of swagger.api;

class Available Assignees {
    Available Assignees();

  @override
  String toString() {
    return 'Available Assignees[]';
  }

  Available Assignees.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Available Assignees> listFromJson(List<dynamic> json) {
    return json == null ? new List<Available Assignees>() : json.map((value) => new Available Assignees.fromJson(value)).toList();
  }

  static Map<String, Available Assignees> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Available Assignees>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Available Assignees.fromJson(value));
    }
    return map;
  }
}

