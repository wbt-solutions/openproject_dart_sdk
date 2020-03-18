part of swagger.api;

class Plain Text {
    Plain Text();

  @override
  String toString() {
    return 'Plain Text[]';
  }

  Plain Text.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Plain Text> listFromJson(List<dynamic> json) {
    return json == null ? new List<Plain Text>() : json.map((value) => new Plain Text.fromJson(value)).toList();
  }

  static Map<String, Plain Text> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Plain Text>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Plain Text.fromJson(value));
    }
    return map;
  }
}

