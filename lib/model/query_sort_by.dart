part of swagger.api;

class Query Sort By {
    Query Sort By();

  @override
  String toString() {
    return 'Query Sort By[]';
  }

  Query Sort By.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Query Sort By> listFromJson(List<dynamic> json) {
    return json == null ? new List<Query Sort By>() : json.map((value) => new Query Sort By.fromJson(value)).toList();
  }

  static Map<String, Query Sort By> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Query Sort By>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Query Sort By.fromJson(value));
    }
    return map;
  }
}

