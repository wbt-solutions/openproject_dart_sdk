part of openproject_dart_sdk.api;

class User {
  
  int id = null;
  
  String login = null;
  
  String firstName = null;
  
  String lastName = null;
  
  String name = null;
  
  String email = null;
  
  bool admin = null;
  
  String avatar = null;
  
  DateTime createdAt = null;
  
  DateTime updatedAt = null;
  
  String status = null;
  //enum statusEnum {  active,  registered,  locked,  invited,  };{
  
  String language = null;
  
  String password = null;
  
  String identityUrl = null;
  User();

  @override
  String toString() {
    return 'User[id=$id, login=$login, firstName=$firstName, lastName=$lastName, name=$name, email=$email, admin=$admin, avatar=$avatar, createdAt=$createdAt, updatedAt=$updatedAt, status=$status, language=$language, password=$password, identityUrl=$identityUrl, ]';
  }

  User.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    login = json['login'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    name = json['name'];
    email = json['email'];
    admin = json['admin'];
    avatar = json['avatar'];
    createdAt = (json['createdAt'] == null) ?
      null :
      DateTime.parse(json['createdAt']);
    updatedAt = (json['updatedAt'] == null) ?
      null :
      DateTime.parse(json['updatedAt']);
    status = json['status'];
    language = json['language'];
    password = json['password'];
    identityUrl = json['identity_url'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (login != null)
      json['login'] = login;
    if (firstName != null)
      json['firstName'] = firstName;
    if (lastName != null)
      json['lastName'] = lastName;
    if (name != null)
      json['name'] = name;
    if (email != null)
      json['email'] = email;
    if (admin != null)
      json['admin'] = admin;
    if (avatar != null)
      json['avatar'] = avatar;
    if (createdAt != null)
      json['createdAt'] = createdAt == null ? null : createdAt.toUtc().toIso8601String();
    if (updatedAt != null)
      json['updatedAt'] = updatedAt == null ? null : updatedAt.toUtc().toIso8601String();
    if (status != null)
      json['status'] = status;
    if (language != null)
      json['language'] = language;
    if (password != null)
      json['password'] = password;
    if (identityUrl != null)
      json['identity_url'] = identityUrl;
    return json;
  }

  static List<User> listFromJson(List<dynamic> json) {
    return json == null ? List<User>() : json.map((value) => User.fromJson(value)).toList();
  }

  static Map<String, User> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, User>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = User.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of User-objects as value to a dart map
  static Map<String, List<User>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<User>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = User.listFromJson(value);
       });
     }
     return map;
  }
}

