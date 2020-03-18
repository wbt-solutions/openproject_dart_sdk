part of swagger.api;

class Available AssigneesModel {
    Available AssigneesModel();

  @override
  String toString() {
    return 'Available AssigneesModel[]';
  }

  Available AssigneesModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Available AssigneesModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<Available AssigneesModel>() : json.map((value) => new Available AssigneesModel.fromJson(value)).toList();
  }

  static Map<String, Available AssigneesModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Available AssigneesModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Available AssigneesModel.fromJson(value));
    }
    return map;
  }
}

