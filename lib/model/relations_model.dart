part of swagger.api;

class RelationsModel {
    RelationsModel();

  @override
  String toString() {
    return 'RelationsModel[]';
  }

  RelationsModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<RelationsModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<RelationsModel>() : json.map((value) => new RelationsModel.fromJson(value)).toList();
  }

  static Map<String, RelationsModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RelationsModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RelationsModel.fromJson(value));
    }
    return map;
  }
}

