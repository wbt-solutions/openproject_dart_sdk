part of swagger.api;

class Help text {
    Help text();

  @override
  String toString() {
    return 'Help text[]';
  }

  Help text.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Help text> listFromJson(List<dynamic> json) {
    return json == null ? new List<Help text>() : json.map((value) => new Help text.fromJson(value)).toList();
  }

  static Map<String, Help text> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Help text>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Help text.fromJson(value));
    }
    return map;
  }
}

