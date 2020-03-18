part of swagger.api;

class Example SchemaModel {
    Example SchemaModel();

  @override
  String toString() {
    return 'Example SchemaModel[]';
  }

  Example SchemaModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Example SchemaModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<Example SchemaModel>() : json.map((value) => new Example SchemaModel.fromJson(value)).toList();
  }

  static Map<String, Example SchemaModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Example SchemaModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Example SchemaModel.fromJson(value));
    }
    return map;
  }
}

