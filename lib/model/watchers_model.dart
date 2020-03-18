part of swagger.api;

class WatchersModel {
    WatchersModel();

  @override
  String toString() {
    return 'WatchersModel[]';
  }

  WatchersModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<WatchersModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<WatchersModel>() : json.map((value) => new WatchersModel.fromJson(value)).toList();
  }

  static Map<String, WatchersModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WatchersModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WatchersModel.fromJson(value));
    }
    return map;
  }
}

