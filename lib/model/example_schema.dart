part of swagger.api;

class Example Schema {
    Example Schema();

  @override
  String toString() {
    return 'Example Schema[]';
  }

  Example Schema.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Example Schema> listFromJson(List<dynamic> json) {
    return json == null ? new List<Example Schema>() : json.map((value) => new Example Schema.fromJson(value)).toList();
  }

  static Map<String, Example Schema> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Example Schema>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Example Schema.fromJson(value));
    }
    return map;
  }
}

