part of swagger.api;

class Help texts {
    Help texts();

  @override
  String toString() {
    return 'Help texts[]';
  }

  Help texts.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Help texts> listFromJson(List<dynamic> json) {
    return json == null ? new List<Help texts>() : json.map((value) => new Help texts.fromJson(value)).toList();
  }

  static Map<String, Help texts> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Help texts>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Help texts.fromJson(value));
    }
    return map;
  }
}

