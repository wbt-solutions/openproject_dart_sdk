part of swagger.api;

class RevisionModel {
    RevisionModel();

  @override
  String toString() {
    return 'RevisionModel[]';
  }

  RevisionModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<RevisionModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<RevisionModel>() : json.map((value) => new RevisionModel.fromJson(value)).toList();
  }

  static Map<String, RevisionModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RevisionModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RevisionModel.fromJson(value));
    }
    return map;
  }
}

