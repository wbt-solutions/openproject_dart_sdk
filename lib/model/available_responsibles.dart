part of swagger.api;

class Available Responsibles {
    Available Responsibles();

  @override
  String toString() {
    return 'Available Responsibles[]';
  }

  Available Responsibles.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Available Responsibles> listFromJson(List<dynamic> json) {
    return json == null ? new List<Available Responsibles>() : json.map((value) => new Available Responsibles.fromJson(value)).toList();
  }

  static Map<String, Available Responsibles> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Available Responsibles>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Available Responsibles.fromJson(value));
    }
    return map;
  }
}

