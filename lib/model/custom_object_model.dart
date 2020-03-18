part of swagger.api;

class Custom ObjectModel {
    Custom ObjectModel();

  @override
  String toString() {
    return 'Custom ObjectModel[]';
  }

  Custom ObjectModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Custom ObjectModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<Custom ObjectModel>() : json.map((value) => new Custom ObjectModel.fromJson(value)).toList();
  }

  static Map<String, Custom ObjectModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Custom ObjectModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Custom ObjectModel.fromJson(value));
    }
    return map;
  }
}

