part of swagger.api;

class StatusesModel {
    StatusesModel();

  @override
  String toString() {
    return 'StatusesModel[]';
  }

  StatusesModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<StatusesModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<StatusesModel>() : json.map((value) => new StatusesModel.fromJson(value)).toList();
  }

  static Map<String, StatusesModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, StatusesModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new StatusesModel.fromJson(value));
    }
    return map;
  }
}

