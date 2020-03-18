part of swagger.api;

class Work PackageModel {
    Work PackageModel();

  @override
  String toString() {
    return 'Work PackageModel[]';
  }

  Work PackageModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Work PackageModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<Work PackageModel>() : json.map((value) => new Work PackageModel.fromJson(value)).toList();
  }

  static Map<String, Work PackageModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Work PackageModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Work PackageModel.fromJson(value));
    }
    return map;
  }
}

