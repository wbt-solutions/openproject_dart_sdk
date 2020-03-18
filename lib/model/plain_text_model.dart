part of swagger.api;

class Plain TextModel {
    Plain TextModel();

  @override
  String toString() {
    return 'Plain TextModel[]';
  }

  Plain TextModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Plain TextModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<Plain TextModel>() : json.map((value) => new Plain TextModel.fromJson(value)).toList();
  }

  static Map<String, Plain TextModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Plain TextModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Plain TextModel.fromJson(value));
    }
    return map;
  }
}

