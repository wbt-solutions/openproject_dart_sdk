part of swagger.api;

class PriorityModel {
    PriorityModel();

  @override
  String toString() {
    return 'PriorityModel[]';
  }

  PriorityModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<PriorityModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<PriorityModel>() : json.map((value) => new PriorityModel.fromJson(value)).toList();
  }

  static Map<String, PriorityModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PriorityModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PriorityModel.fromJson(value));
    }
    return map;
  }
}

