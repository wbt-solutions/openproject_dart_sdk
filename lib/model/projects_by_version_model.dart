part of swagger.api;

class Projects by versionModel {
    Projects by versionModel();

  @override
  String toString() {
    return 'Projects by versionModel[]';
  }

  Projects by versionModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Projects by versionModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<Projects by versionModel>() : json.map((value) => new Projects by versionModel.fromJson(value)).toList();
  }

  static Map<String, Projects by versionModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Projects by versionModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Projects by versionModel.fromJson(value));
    }
    return map;
  }
}

