part of swagger.api;

class Schema For Project Queries {
    Schema For Project Queries();

  @override
  String toString() {
    return 'Schema For Project Queries[]';
  }

  Schema For Project Queries.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Schema For Project Queries> listFromJson(List<dynamic> json) {
    return json == null ? new List<Schema For Project Queries>() : json.map((value) => new Schema For Project Queries.fromJson(value)).toList();
  }

  static Map<String, Schema For Project Queries> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Schema For Project Queries>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Schema For Project Queries.fromJson(value));
    }
    return map;
  }
}

