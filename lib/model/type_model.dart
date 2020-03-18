part of swagger.api;

class TypeModel {
    TypeModel();

  @override
  String toString() {
    return 'TypeModel[]';
  }

  TypeModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<TypeModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<TypeModel>() : json.map((value) => new TypeModel.fromJson(value)).toList();
  }

  static Map<String, TypeModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TypeModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TypeModel.fromJson(value));
    }
    return map;
  }
}

