part of openproject_dart_sdk.api;

class InlineObject6 {
  
  String login = null;
  
  String email = null;
  
  String firstName = null;
  
  String lastName = null;
  
  bool admin = null;
  
  String language = null;
  
  String status = null;
  
  String password = null;
  InlineObject6();

  @override
  String toString() {
    return 'InlineObject6[login=$login, email=$email, firstName=$firstName, lastName=$lastName, admin=$admin, language=$language, status=$status, password=$password, ]';
  }

  InlineObject6.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    login = json['login'];
    email = json['email'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    admin = json['admin'];
    language = json['language'];
    status = json['status'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
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
    if (status != null)
      json['status'] = status;
    if (password != null)
      json['password'] = password;
    return json;
  }

  static List<InlineObject6> listFromJson(List<dynamic> json) {
    return json == null ? List<InlineObject6>() : json.map((value) => InlineObject6.fromJson(value)).toList();
  }

  static Map<String, InlineObject6> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, InlineObject6>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = InlineObject6.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineObject6-objects as value to a dart map
  static Map<String, List<InlineObject6>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<InlineObject6>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = InlineObject6.listFromJson(value);
       });
     }
     return map;
  }
}

