part of swagger.api;

class Work Package SchemasModel {
    Work Package SchemasModel();

  @override
  String toString() {
    return 'Work Package SchemasModel[]';
  }

  Work Package SchemasModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Work Package SchemasModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<Work Package SchemasModel>() : json.map((value) => new Work Package SchemasModel.fromJson(value)).toList();
  }

  static Map<String, Work Package SchemasModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Work Package SchemasModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Work Package SchemasModel.fromJson(value));
    }
    return map;
  }
}

