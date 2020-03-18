part of swagger.api;

class UserPreferences {
    UserPreferences();

  @override
  String toString() {
    return 'UserPreferences[]';
  }

  UserPreferences.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<UserPreferences> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserPreferences>() : json.map((value) => new UserPreferences.fromJson(value)).toList();
  }

  static Map<String, UserPreferences> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserPreferences>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserPreferences.fromJson(value));
    }
    return map;
  }
}

