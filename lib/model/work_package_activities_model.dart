part of swagger.api;

class Work Package activitiesModel {
    Work Package activitiesModel();

  @override
  String toString() {
    return 'Work Package activitiesModel[]';
  }

  Work Package activitiesModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Work Package activitiesModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<Work Package activitiesModel>() : json.map((value) => new Work Package activitiesModel.fromJson(value)).toList();
  }

  static Map<String, Work Package activitiesModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Work Package activitiesModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Work Package activitiesModel.fromJson(value));
    }
    return map;
  }
}

