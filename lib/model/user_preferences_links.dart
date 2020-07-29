part of openproject_dart_sdk.api;

class UserPreferencesLinks {
  
  Link self;
  
  Link user;

  UserPreferencesLinks({
    this.self,
    this.user,
  });

  @override
  String toString() {
    return 'UserPreferencesLinks[self=$self, user=$user, ]';
  }

  UserPreferencesLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    self = (json['self'] == null) ?
      null :
      Link.fromJson(json['self']);
    user = (json['user'] == null) ?
      null :
      Link.fromJson(json['user']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (self != null)
      json['self'] = self;
    if (user != null)
      json['user'] = user;
    return json;
  }

  static List<UserPreferencesLinks> listFromJson(List<dynamic> json) {
    return json == null ? List<UserPreferencesLinks>() : json.map((value) => UserPreferencesLinks.fromJson(value)).toList();
  }

  static Map<String, UserPreferencesLinks> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, UserPreferencesLinks>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = UserPreferencesLinks.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of UserPreferencesLinks-objects as value to a dart map
  static Map<String, List<UserPreferencesLinks>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<UserPreferencesLinks>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = UserPreferencesLinks.listFromJson(value);
      });
    }
    return map;
  }
}

