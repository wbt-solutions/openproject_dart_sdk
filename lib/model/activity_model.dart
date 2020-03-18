part of swagger.api;

class ActivityModel {
    ActivityModel();

  @override
  String toString() {
    return 'ActivityModel[]';
  }

  ActivityModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<ActivityModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<ActivityModel>() : json.map((value) => new ActivityModel.fromJson(value)).toList();
  }

  static Map<String, ActivityModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ActivityModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ActivityModel.fromJson(value));
    }
    return map;
  }
}

