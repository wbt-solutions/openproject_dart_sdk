part of swagger.api;

class Body6 {
  
  String login = null;
  

  String email = null;
  

  String firstName = null;
  

  String lastName = null;
  

  bool admin = null;
  

  String language = null;
  

  String status = null;
  

  String password = null;
  
  Body6();

  @override
  String toString() {
    return 'Body6[login=$login, email=$email, firstName=$firstName, lastName=$lastName, admin=$admin, language=$language, status=$status, password=$password, ]';
  }

  Body6.fromJson(Map<String, dynamic> json) {
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
    status =
        json['status']
    ;
    password =
        json['password']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'login': login,
      'email': email,
      'firstName': firstName,
      'lastName': lastName,
      'admin': admin,
      'language': language,
      'status': status,
      'password': password
     };
  }

  static List<Body6> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body6>() : json.map((value) => new Body6.fromJson(value)).toList();
  }

  static Map<String, Body6> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body6>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body6.fromJson(value));
    }
    return map;
  }
}

