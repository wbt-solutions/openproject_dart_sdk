part of swagger.api;

class Example FormModel {
    Example FormModel();

  @override
  String toString() {
    return 'Example FormModel[]';
  }

  Example FormModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Example FormModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<Example FormModel>() : json.map((value) => new Example FormModel.fromJson(value)).toList();
  }

  static Map<String, Example FormModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Example FormModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Example FormModel.fromJson(value));
    }
    return map;
  }
}

