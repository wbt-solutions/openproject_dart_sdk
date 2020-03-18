part of swagger.api;

class Versions by ProjectModel {
    Versions by ProjectModel();

  @override
  String toString() {
    return 'Versions by ProjectModel[]';
  }

  Versions by ProjectModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Versions by ProjectModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<Versions by ProjectModel>() : json.map((value) => new Versions by ProjectModel.fromJson(value)).toList();
  }

  static Map<String, Versions by ProjectModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Versions by ProjectModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Versions by ProjectModel.fromJson(value));
    }
    return map;
  }
}

