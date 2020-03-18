part of swagger.api;

class Available Watchers {
    Available Watchers();

  @override
  String toString() {
    return 'Available Watchers[]';
  }

  Available Watchers.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Available Watchers> listFromJson(List<dynamic> json) {
    return json == null ? new List<Available Watchers>() : json.map((value) => new Available Watchers.fromJson(value)).toList();
  }

  static Map<String, Available Watchers> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Available Watchers>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Available Watchers.fromJson(value));
    }
    return map;
  }
}

