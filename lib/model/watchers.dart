part of swagger.api;

class Watchers {
    Watchers();

  @override
  String toString() {
    return 'Watchers[]';
  }

  Watchers.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Watchers> listFromJson(List<dynamic> json) {
    return json == null ? new List<Watchers>() : json.map((value) => new Watchers.fromJson(value)).toList();
  }

  static Map<String, Watchers> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Watchers>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Watchers.fromJson(value));
    }
    return map;
  }
}

