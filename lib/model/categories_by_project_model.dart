part of swagger.api;

class Categories by ProjectModel {
    Categories by ProjectModel();

  @override
  String toString() {
    return 'Categories by ProjectModel[]';
  }

  Categories by ProjectModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Categories by ProjectModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<Categories by ProjectModel>() : json.map((value) => new Categories by ProjectModel.fromJson(value)).toList();
  }

  static Map<String, Categories by ProjectModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Categories by ProjectModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Categories by ProjectModel.fromJson(value));
    }
    return map;
  }
}

