part of swagger.api;

class UserModel {
    UserModel();

  @override
  String toString() {
    return 'UserModel[]';
  }

  UserModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<UserModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserModel>() : json.map((value) => new UserModel.fromJson(value)).toList();
  }

  static Map<String, UserModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserModel.fromJson(value));
    }
    return map;
  }
}

