part of swagger.api;

class Help textModel {
    Help textModel();

  @override
  String toString() {
    return 'Help textModel[]';
  }

  Help textModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Help textModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<Help textModel>() : json.map((value) => new Help textModel.fromJson(value)).toList();
  }

  static Map<String, Help textModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Help textModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Help textModel.fromJson(value));
    }
    return map;
  }
}

