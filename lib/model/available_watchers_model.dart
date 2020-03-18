part of swagger.api;

class Available WatchersModel {
    Available WatchersModel();

  @override
  String toString() {
    return 'Available WatchersModel[]';
  }

  Available WatchersModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Available WatchersModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<Available WatchersModel>() : json.map((value) => new Available WatchersModel.fromJson(value)).toList();
  }

  static Map<String, Available WatchersModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Available WatchersModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Available WatchersModel.fromJson(value));
    }
    return map;
  }
}

