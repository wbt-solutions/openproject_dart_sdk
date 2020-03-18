part of swagger.api;

class Work Package Schemas {
    Work Package Schemas();

  @override
  String toString() {
    return 'Work Package Schemas[]';
  }

  Work Package Schemas.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Work Package Schemas> listFromJson(List<dynamic> json) {
    return json == null ? new List<Work Package Schemas>() : json.map((value) => new Work Package Schemas.fromJson(value)).toList();
  }

  static Map<String, Work Package Schemas> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Work Package Schemas>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Work Package Schemas.fromJson(value));
    }
    return map;
  }
}

