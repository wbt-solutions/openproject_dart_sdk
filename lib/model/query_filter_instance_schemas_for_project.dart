part of swagger.api;

class Query Filter Instance Schemas For Project {
    Query Filter Instance Schemas For Project();

  @override
  String toString() {
    return 'Query Filter Instance Schemas For Project[]';
  }

  Query Filter Instance Schemas For Project.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Query Filter Instance Schemas For Project> listFromJson(List<dynamic> json) {
    return json == null ? new List<Query Filter Instance Schemas For Project>() : json.map((value) => new Query Filter Instance Schemas For Project.fromJson(value)).toList();
  }

  static Map<String, Query Filter Instance Schemas For Project> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Query Filter Instance Schemas For Project>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Query Filter Instance Schemas For Project.fromJson(value));
    }
    return map;
  }
}

