part of swagger.api;

class VersionModel {
    VersionModel();

  @override
  String toString() {
    return 'VersionModel[]';
  }

  VersionModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<VersionModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<VersionModel>() : json.map((value) => new VersionModel.fromJson(value)).toList();
  }

  static Map<String, VersionModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VersionModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VersionModel.fromJson(value));
    }
    return map;
  }
}

