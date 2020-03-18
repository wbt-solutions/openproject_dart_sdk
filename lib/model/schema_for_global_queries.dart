part of swagger.api;

class Schema For Global Queries {
    Schema For Global Queries();

  @override
  String toString() {
    return 'Schema For Global Queries[]';
  }

  Schema For Global Queries.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Schema For Global Queries> listFromJson(List<dynamic> json) {
    return json == null ? new List<Schema For Global Queries>() : json.map((value) => new Schema For Global Queries.fromJson(value)).toList();
  }

  static Map<String, Schema For Global Queries> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Schema For Global Queries>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Schema For Global Queries.fromJson(value));
    }
    return map;
  }
}

