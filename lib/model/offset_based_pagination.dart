part of swagger.api;

class Offset based pagination {
    Offset based pagination();

  @override
  String toString() {
    return 'Offset based pagination[]';
  }

  Offset based pagination.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Offset based pagination> listFromJson(List<dynamic> json) {
    return json == null ? new List<Offset based pagination>() : json.map((value) => new Offset based pagination.fromJson(value)).toList();
  }

  static Map<String, Offset based pagination> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Offset based pagination>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Offset based pagination.fromJson(value));
    }
    return map;
  }
}

