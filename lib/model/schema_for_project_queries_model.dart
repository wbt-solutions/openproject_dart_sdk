part of swagger.api;

class Schema For Project QueriesModel {
    Schema For Project QueriesModel();

  @override
  String toString() {
    return 'Schema For Project QueriesModel[]';
  }

  Schema For Project QueriesModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Schema For Project QueriesModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<Schema For Project QueriesModel>() : json.map((value) => new Schema For Project QueriesModel.fromJson(value)).toList();
  }

  static Map<String, Schema For Project QueriesModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Schema For Project QueriesModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Schema For Project QueriesModel.fromJson(value));
    }
    return map;
  }
}

