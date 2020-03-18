part of swagger.api;

class UserPreferencesModel {
    UserPreferencesModel();

  @override
  String toString() {
    return 'UserPreferencesModel[]';
  }

  UserPreferencesModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<UserPreferencesModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserPreferencesModel>() : json.map((value) => new UserPreferencesModel.fromJson(value)).toList();
  }

  static Map<String, UserPreferencesModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserPreferencesModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserPreferencesModel.fromJson(value));
    }
    return map;
  }
}

