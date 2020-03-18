part of swagger.api;

class RootModel {
    RootModel();

  @override
  String toString() {
    return 'RootModel[]';
  }

  RootModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<RootModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<RootModel>() : json.map((value) => new RootModel.fromJson(value)).toList();
  }

  static Map<String, RootModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RootModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RootModel.fromJson(value));
    }
    return map;
  }
}

