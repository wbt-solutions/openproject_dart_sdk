part of swagger.api;

class Star QueryModel {
    Star QueryModel();

  @override
  String toString() {
    return 'Star QueryModel[]';
  }

  Star QueryModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Star QueryModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<Star QueryModel>() : json.map((value) => new Star QueryModel.fromJson(value)).toList();
  }

  static Map<String, Star QueryModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Star QueryModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Star QueryModel.fromJson(value));
    }
    return map;
  }
}

