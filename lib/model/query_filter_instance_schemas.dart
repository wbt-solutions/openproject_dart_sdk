part of swagger.api;

class Query Filter Instance Schemas {
    Query Filter Instance Schemas();

  @override
  String toString() {
    return 'Query Filter Instance Schemas[]';
  }

  Query Filter Instance Schemas.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Query Filter Instance Schemas> listFromJson(List<dynamic> json) {
    return json == null ? new List<Query Filter Instance Schemas>() : json.map((value) => new Query Filter Instance Schemas.fromJson(value)).toList();
  }

  static Map<String, Query Filter Instance Schemas> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Query Filter Instance Schemas>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Query Filter Instance Schemas.fromJson(value));
    }
    return map;
  }
}

