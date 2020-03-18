part of swagger.api;

class String Object {
    String Object();

  @override
  String toString() {
    return 'String Object[]';
  }

  String Object.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<String Object> listFromJson(List<dynamic> json) {
    return json == null ? new List<String Object>() : json.map((value) => new String Object.fromJson(value)).toList();
  }

  static Map<String, String Object> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, String Object>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new String Object.fromJson(value));
    }
    return map;
  }
}

