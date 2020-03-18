part of swagger.api;

class Work Package Schema {
    Work Package Schema();

  @override
  String toString() {
    return 'Work Package Schema[]';
  }

  Work Package Schema.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Work Package Schema> listFromJson(List<dynamic> json) {
    return json == null ? new List<Work Package Schema>() : json.map((value) => new Work Package Schema.fromJson(value)).toList();
  }

  static Map<String, Work Package Schema> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Work Package Schema>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Work Package Schema.fromJson(value));
    }
    return map;
  }
}

