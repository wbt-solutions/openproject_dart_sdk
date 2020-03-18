part of swagger.api;

class Body5 {
  
  String login = null;
  

  String email = null;
  

  String firstName = null;
  

  String lastName = null;
  

  bool admin = null;
  

  String language = null;
  
  Body5();

  @override
  String toString() {
    return 'Body5[login=$login, email=$email, firstName=$firstName, lastName=$lastName, admin=$admin, language=$language, ]';
  }

  Body5.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    login =
        json['login']
    ;
    email =
        json['email']
    ;
    firstName =
        json['firstName']
    ;
    lastName =
        json['lastName']
    ;
    admin =
        json['admin']
    ;
    language =
        json['language']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'login': login,
      'email': email,
      'firstName': firstName,
      'lastName': lastName,
      'admin': admin,
      'language': language
     };
  }

  static List<Body5> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body5>() : json.map((value) => new Body5.fromJson(value)).toList();
  }

  static Map<String, Body5> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body5>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body5.fromJson(value));
    }
    return map;
  }
}

