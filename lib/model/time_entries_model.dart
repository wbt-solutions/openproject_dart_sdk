part of swagger.api;

class Time entriesModel {
    Time entriesModel();

  @override
  String toString() {
    return 'Time entriesModel[]';
  }

  Time entriesModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Time entriesModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<Time entriesModel>() : json.map((value) => new Time entriesModel.fromJson(value)).toList();
  }

  static Map<String, Time entriesModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Time entriesModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Time entriesModel.fromJson(value));
    }
    return map;
  }
}

