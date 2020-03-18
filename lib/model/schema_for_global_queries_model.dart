part of swagger.api;

class Schema For Global QueriesModel {
    Schema For Global QueriesModel();

  @override
  String toString() {
    return 'Schema For Global QueriesModel[]';
  }

  Schema For Global QueriesModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Schema For Global QueriesModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<Schema For Global QueriesModel>() : json.map((value) => new Schema For Global QueriesModel.fromJson(value)).toList();
  }

  static Map<String, Schema For Global QueriesModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Schema For Global QueriesModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Schema For Global QueriesModel.fromJson(value));
    }
    return map;
  }
}

