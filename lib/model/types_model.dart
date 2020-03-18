part of swagger.api;

class TypesModel {
    TypesModel();

  @override
  String toString() {
    return 'TypesModel[]';
  }

  TypesModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<TypesModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<TypesModel>() : json.map((value) => new TypesModel.fromJson(value)).toList();
  }

  static Map<String, TypesModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TypesModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TypesModel.fromJson(value));
    }
    return map;
  }
}

