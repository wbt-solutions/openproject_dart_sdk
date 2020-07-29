part of openproject_dart_sdk.api;

class UsersEmbedded {

  List<User> elements = const [];

  UsersEmbedded({
    this.elements = const [],
  });

  @override
  String toString() {
    return 'UsersEmbedded[elements=$elements, ]';
  }

  UsersEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    elements = (json['elements'] == null) ?
      null :
      User.listFromJson(json['elements']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (elements != null)
      json['elements'] = elements;
    return json;
  }

  static List<UsersEmbedded> listFromJson(List<dynamic> json) {
    return json == null ? List<UsersEmbedded>() : json.map((value) => UsersEmbedded.fromJson(value)).toList();
  }

  static Map<String, UsersEmbedded> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, UsersEmbedded>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = UsersEmbedded.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of UsersEmbedded-objects as value to a dart map
  static Map<String, List<UsersEmbedded>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<UsersEmbedded>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = UsersEmbedded.listFromJson(value);
      });
    }
    return map;
  }
}

