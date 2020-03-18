part of swagger.api;

class VersionsModel {
    VersionsModel();

  @override
  String toString() {
    return 'VersionsModel[]';
  }

  VersionsModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<VersionsModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<VersionsModel>() : json.map((value) => new VersionsModel.fromJson(value)).toList();
  }

  static Map<String, VersionsModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VersionsModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VersionsModel.fromJson(value));
    }
    return map;
  }
}

