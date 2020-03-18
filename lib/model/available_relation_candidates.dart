part of swagger.api;

class Available relation candidates {
    Available relation candidates();

  @override
  String toString() {
    return 'Available relation candidates[]';
  }

  Available relation candidates.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Available relation candidates> listFromJson(List<dynamic> json) {
    return json == null ? new List<Available relation candidates>() : json.map((value) => new Available relation candidates.fromJson(value)).toList();
  }

  static Map<String, Available relation candidates> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Available relation candidates>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Available relation candidates.fromJson(value));
    }
    return map;
  }
}

