part of swagger.api;

class Work Package Relation FormModel {
    Work Package Relation FormModel();

  @override
  String toString() {
    return 'Work Package Relation FormModel[]';
  }

  Work Package Relation FormModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Work Package Relation FormModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<Work Package Relation FormModel>() : json.map((value) => new Work Package Relation FormModel.fromJson(value)).toList();
  }

  static Map<String, Work Package Relation FormModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Work Package Relation FormModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Work Package Relation FormModel.fromJson(value));
    }
    return map;
  }
}

