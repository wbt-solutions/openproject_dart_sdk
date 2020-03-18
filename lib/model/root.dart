part of swagger.api;

class Root {
    Root();

  @override
  String toString() {
    return 'Root[]';
  }

  Root.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Root> listFromJson(List<dynamic> json) {
    return json == null ? new List<Root>() : json.map((value) => new Root.fromJson(value)).toList();
  }

  static Map<String, Root> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Root>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Root.fromJson(value));
    }
    return map;
  }
}

