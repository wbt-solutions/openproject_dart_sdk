part of swagger.api;

class UsersModel {
    UsersModel();

  @override
  String toString() {
    return 'UsersModel[]';
  }

  UsersModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<UsersModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<UsersModel>() : json.map((value) => new UsersModel.fromJson(value)).toList();
  }

  static Map<String, UsersModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UsersModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UsersModel.fromJson(value));
    }
    return map;
  }
}

