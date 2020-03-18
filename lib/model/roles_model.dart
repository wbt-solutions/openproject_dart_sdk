part of swagger.api;

class RolesModel {
    RolesModel();

  @override
  String toString() {
    return 'RolesModel[]';
  }

  RolesModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<RolesModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<RolesModel>() : json.map((value) => new RolesModel.fromJson(value)).toList();
  }

  static Map<String, RolesModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RolesModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RolesModel.fromJson(value));
    }
    return map;
  }
}

