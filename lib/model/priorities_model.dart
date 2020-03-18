part of swagger.api;

class PrioritiesModel {
    PrioritiesModel();

  @override
  String toString() {
    return 'PrioritiesModel[]';
  }

  PrioritiesModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<PrioritiesModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<PrioritiesModel>() : json.map((value) => new PrioritiesModel.fromJson(value)).toList();
  }

  static Map<String, PrioritiesModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PrioritiesModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PrioritiesModel.fromJson(value));
    }
    return map;
  }
}

