part of swagger.api;

class Default QueryModel {
    Default QueryModel();

  @override
  String toString() {
    return 'Default QueryModel[]';
  }

  Default QueryModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Default QueryModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<Default QueryModel>() : json.map((value) => new Default QueryModel.fromJson(value)).toList();
  }

  static Map<String, Default QueryModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Default QueryModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Default QueryModel.fromJson(value));
    }
    return map;
  }
}

