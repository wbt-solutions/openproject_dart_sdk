part of swagger.api;

class Relation schemaModel {
    Relation schemaModel();

  @override
  String toString() {
    return 'Relation schemaModel[]';
  }

  Relation schemaModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Relation schemaModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<Relation schemaModel>() : json.map((value) => new Relation schemaModel.fromJson(value)).toList();
  }

  static Map<String, Relation schemaModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Relation schemaModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Relation schemaModel.fromJson(value));
    }
    return map;
  }
}

