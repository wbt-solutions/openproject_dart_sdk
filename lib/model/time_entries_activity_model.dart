part of swagger.api;

class Time entries activityModel {
    Time entries activityModel();

  @override
  String toString() {
    return 'Time entries activityModel[]';
  }

  Time entries activityModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Time entries activityModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<Time entries activityModel>() : json.map((value) => new Time entries activityModel.fromJson(value)).toList();
  }

  static Map<String, Time entries activityModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Time entries activityModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Time entries activityModel.fromJson(value));
    }
    return map;
  }
}

