part of swagger.api;

class Custom Object {
    Custom Object();

  @override
  String toString() {
    return 'Custom Object[]';
  }

  Custom Object.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Custom Object> listFromJson(List<dynamic> json) {
    return json == null ? new List<Custom Object>() : json.map((value) => new Custom Object.fromJson(value)).toList();
  }

  static Map<String, Custom Object> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Custom Object>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Custom Object.fromJson(value));
    }
    return map;
  }
}

