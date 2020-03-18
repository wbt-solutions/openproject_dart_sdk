part of swagger.api;

class Activity {
    Activity();

  @override
  String toString() {
    return 'Activity[]';
  }

  Activity.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Activity> listFromJson(List<dynamic> json) {
    return json == null ? new List<Activity>() : json.map((value) => new Activity.fromJson(value)).toList();
  }

  static Map<String, Activity> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Activity>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Activity.fromJson(value));
    }
    return map;
  }
}

