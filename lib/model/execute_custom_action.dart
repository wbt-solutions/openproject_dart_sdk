part of swagger.api;

class Execute custom action {
    Execute custom action();

  @override
  String toString() {
    return 'Execute custom action[]';
  }

  Execute custom action.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Execute custom action> listFromJson(List<dynamic> json) {
    return json == null ? new List<Execute custom action>() : json.map((value) => new Execute custom action.fromJson(value)).toList();
  }

  static Map<String, Execute custom action> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Execute custom action>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Execute custom action.fromJson(value));
    }
    return map;
  }
}

