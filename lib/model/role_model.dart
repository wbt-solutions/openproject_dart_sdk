part of swagger.api;

class RoleModel {
    RoleModel();

  @override
  String toString() {
    return 'RoleModel[]';
  }

  RoleModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<RoleModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<RoleModel>() : json.map((value) => new RoleModel.fromJson(value)).toList();
  }

  static Map<String, RoleModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, RoleModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new RoleModel.fromJson(value));
    }
    return map;
  }
}

