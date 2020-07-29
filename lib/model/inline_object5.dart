part of openproject_dart_sdk.api;

class InlineObject5 {
  
  String login;
  
  String email;
  
  String firstName;
  
  String lastName;
  
  bool admin;
  
  String language;

  InlineObject5({
    this.login,
    this.email,
    this.firstName,
    this.lastName,
    this.admin,
    this.language,
  });

  @override
  String toString() {
    return 'InlineObject5[login=$login, email=$email, firstName=$firstName, lastName=$lastName, admin=$admin, language=$language, ]';
  }

  InlineObject5.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    login = json['login'];
    email = json['email'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    admin = json['admin'];
    language = json['language'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (login != null)
      json['login'] = login;
    if (email != null)
      json['email'] = email;
    if (firstName != null)
      json['firstName'] = firstName;
    if (lastName != null)
      json['lastName'] = lastName;
    if (admin != null)
      json['admin'] = admin;
    if (language != null)
      json['language'] = language;
    return json;
  }

  static List<InlineObject5> listFromJson(List<dynamic> json) {
    return json == null ? List<InlineObject5>() : json.map((value) => InlineObject5.fromJson(value)).toList();
  }

  static Map<String, InlineObject5> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, InlineObject5>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = InlineObject5.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineObject5-objects as value to a dart map
  static Map<String, List<InlineObject5>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<InlineObject5>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = InlineObject5.listFromJson(value);
      });
    }
    return map;
  }
}

