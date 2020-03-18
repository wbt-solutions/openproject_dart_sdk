part of swagger.api;

class RevisionsModel {
    RevisionsModel();

  @override
  String toString() {
    return 'RevisionsModel[]';
  }

  RevisionsModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<RevisionsModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<RevisionsModel>() : json.map((value) => new RevisionsModel.fromJson(value)).toList();
  }

  static Map<String, RevisionsModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RevisionsModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RevisionsModel.fromJson(value));
    }
    return map;
  }
}

