part of swagger.api;

class User {
  
  int id = null;
  

  String login = null;
  

  String firstName = null;
  

  String lastName = null;
  

  String email = null;
  

  DateTime createdAt = null;
  

  DateTime updatedAt = null;
  

  String status = null;
  //enum statusEnum {  active,  };
  User();

  @override
  String toString() {
    return 'User[id=$id, login=$login, firstName=$firstName, lastName=$lastName, email=$email, createdAt=$createdAt, updatedAt=$updatedAt, status=$status, ]';
  }

  User.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        json['id']
    ;
    login =
        json['login']
    ;
    firstName =
        json['firstName']
    ;
    lastName =
        json['lastName']
    ;
    email =
        json['email']
    ;
    createdAt = json['createdAt'] == null ? null : DateTime.parse(json['createdAt']);
    updatedAt = json['updatedAt'] == null ? null : DateTime.parse(json['updatedAt']);
    status =
        json['status']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'login': login,
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'createdAt': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'updatedAt': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
      'status': status
     };
  }

  static List<User> listFromJson(List<dynamic> json) {
    return json == null ? new List<User>() : json.map((value) => new User.fromJson(value)).toList();
  }

  static Map<String, User> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, User>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new User.fromJson(value));
    }
    return map;
  }
}

