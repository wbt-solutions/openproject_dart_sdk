part of swagger.api;

class Types by ProjectModel {
    Types by ProjectModel();

  @override
  String toString() {
    return 'Types by ProjectModel[]';
  }

  Types by ProjectModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Types by ProjectModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<Types by ProjectModel>() : json.map((value) => new Types by ProjectModel.fromJson(value)).toList();
  }

  static Map<String, Types by ProjectModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Types by ProjectModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Types by ProjectModel.fromJson(value));
    }
    return map;
  }
}

