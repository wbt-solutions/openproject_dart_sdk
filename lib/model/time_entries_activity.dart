part of swagger.api;

class Time entries activity {
    Time entries activity();

  @override
  String toString() {
    return 'Time entries activity[]';
  }

  Time entries activity.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Time entries activity> listFromJson(List<dynamic> json) {
    return json == null ? new List<Time entries activity>() : json.map((value) => new Time entries activity.fromJson(value)).toList();
  }

  static Map<String, Time entries activity> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Time entries activity>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Time entries activity.fromJson(value));
    }
    return map;
  }
}

