part of swagger.api;

class Help textsModel {
    Help textsModel();

  @override
  String toString() {
    return 'Help textsModel[]';
  }

  Help textsModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Help textsModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<Help textsModel>() : json.map((value) => new Help textsModel.fromJson(value)).toList();
  }

  static Map<String, Help textsModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Help textsModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Help textsModel.fromJson(value));
    }
    return map;
  }
}

