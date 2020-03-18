part of swagger.api;

class Custom Action {
    Custom Action();

  @override
  String toString() {
    return 'Custom Action[]';
  }

  Custom Action.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Custom Action> listFromJson(List<dynamic> json) {
    return json == null ? new List<Custom Action>() : json.map((value) => new Custom Action.fromJson(value)).toList();
  }

  static Map<String, Custom Action> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Custom Action>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Custom Action.fromJson(value));
    }
    return map;
  }
}

