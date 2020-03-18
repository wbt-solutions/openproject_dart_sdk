part of swagger.api;

class Cursor based pagination {
    Cursor based pagination();

  @override
  String toString() {
    return 'Cursor based pagination[]';
  }

  Cursor based pagination.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Cursor based pagination> listFromJson(List<dynamic> json) {
    return json == null ? new List<Cursor based pagination>() : json.map((value) => new Cursor based pagination.fromJson(value)).toList();
  }

  static Map<String, Cursor based pagination> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Cursor based pagination>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Cursor based pagination.fromJson(value));
    }
    return map;
  }
}

