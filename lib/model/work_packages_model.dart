part of swagger.api;

class Work PackagesModel {
    Work PackagesModel();

  @override
  String toString() {
    return 'Work PackagesModel[]';
  }

  Work PackagesModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Work PackagesModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<Work PackagesModel>() : json.map((value) => new Work PackagesModel.fromJson(value)).toList();
  }

  static Map<String, Work PackagesModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Work PackagesModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Work PackagesModel.fromJson(value));
    }
    return map;
  }
}

