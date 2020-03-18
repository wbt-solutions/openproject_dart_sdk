part of swagger.api;

class StatusModel {
    StatusModel();

  @override
  String toString() {
    return 'StatusModel[]';
  }

  StatusModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<StatusModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<StatusModel>() : json.map((value) => new StatusModel.fromJson(value)).toList();
  }

  static Map<String, StatusModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, StatusModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new StatusModel.fromJson(value));
    }
    return map;
  }
}

