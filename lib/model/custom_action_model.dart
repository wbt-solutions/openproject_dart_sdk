part of swagger.api;

class Custom ActionModel {
    Custom ActionModel();

  @override
  String toString() {
    return 'Custom ActionModel[]';
  }

  Custom ActionModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Custom ActionModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<Custom ActionModel>() : json.map((value) => new Custom ActionModel.fromJson(value)).toList();
  }

  static Map<String, Custom ActionModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Custom ActionModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Custom ActionModel.fromJson(value));
    }
    return map;
  }
}

