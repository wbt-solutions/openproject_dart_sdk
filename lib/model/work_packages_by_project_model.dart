part of swagger.api;

class Work Packages by ProjectModel {
    Work Packages by ProjectModel();

  @override
  String toString() {
    return 'Work Packages by ProjectModel[]';
  }

  Work Packages by ProjectModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Work Packages by ProjectModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<Work Packages by ProjectModel>() : json.map((value) => new Work Packages by ProjectModel.fromJson(value)).toList();
  }

  static Map<String, Work Packages by ProjectModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Work Packages by ProjectModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Work Packages by ProjectModel.fromJson(value));
    }
    return map;
  }
}

