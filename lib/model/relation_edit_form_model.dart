part of swagger.api;

class Relation edit formModel {
    Relation edit formModel();

  @override
  String toString() {
    return 'Relation edit formModel[]';
  }

  Relation edit formModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Relation edit formModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<Relation edit formModel>() : json.map((value) => new Relation edit formModel.fromJson(value)).toList();
  }

  static Map<String, Relation edit formModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Relation edit formModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Relation edit formModel.fromJson(value));
    }
    return map;
  }
}

