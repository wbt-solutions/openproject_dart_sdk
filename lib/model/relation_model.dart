part of swagger.api;

class RelationModel {
    RelationModel();

  @override
  String toString() {
    return 'RelationModel[]';
  }

  RelationModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<RelationModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<RelationModel>() : json.map((value) => new RelationModel.fromJson(value)).toList();
  }

  static Map<String, RelationModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RelationModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RelationModel.fromJson(value));
    }
    return map;
  }
}

