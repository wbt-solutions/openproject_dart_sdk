part of swagger.api;

class Time entryModel {
    Time entryModel();

  @override
  String toString() {
    return 'Time entryModel[]';
  }

  Time entryModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Time entryModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<Time entryModel>() : json.map((value) => new Time entryModel.fromJson(value)).toList();
  }

  static Map<String, Time entryModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Time entryModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Time entryModel.fromJson(value));
    }
    return map;
  }
}

