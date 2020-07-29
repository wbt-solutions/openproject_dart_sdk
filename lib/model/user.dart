part of openproject_dart_sdk.api;

class User {
  
  int id;
  
  String login;
  
  String firstName;
  
  String lastName;
  
  String name;
  
  String email;
  
  bool admin;
  
  String avatar;
  
  DateTime createdAt;
  
  DateTime updatedAt;
  
  UserStatusEnum status;
  
  String language;
  
  String password;
  
  String identityUrl;
  
  UserLinks links;

  User({
    this.id,
    this.login,
    this.firstName,
    this.lastName,
    this.name,
    this.email,
    this.admin,
    this.avatar,
    this.createdAt,
    this.updatedAt,
    this.status,
    this.language,
    this.password,
    this.identityUrl,
    this.links,
  });

  @override
  String toString() {
    return 'User[id=$id, login=$login, firstName=$firstName, lastName=$lastName, name=$name, email=$email, admin=$admin, avatar=$avatar, createdAt=$createdAt, updatedAt=$updatedAt, status=$status, language=$language, password=$password, identityUrl=$identityUrl, links=$links, ]';
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
    status = UserStatusEnum.fromJson(json['status']);
    language = json['language'];
    password = json['password'];
    identityUrl = json['identity_url'];
    links = (json['_links'] == null) ?
      null :
      UserLinks.fromJson(json['_links']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
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
      json['status'] = status.value;
    if (language != null)
      json['language'] = language;
    if (password != null)
      json['password'] = password;
    if (identityUrl != null)
      json['identity_url'] = identityUrl;
    if (links != null)
      json['_links'] = links;
    return json;
  }

  static List<User> listFromJson(List<dynamic> json) {
    return json == null ? List<User>() : json.map((value) => User.fromJson(value)).toList();
  }

  static Map<String, User> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, User>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = User.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of User-objects as value to a dart map
  static Map<String, List<User>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<User>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = User.listFromJson(value);
      });
    }
    return map;
  }
}
class UserStatusEnum {
  /// The underlying value of this enum member.
  final String value;

  const UserStatusEnum._internal(this.value);

  static const UserStatusEnum active_ = UserStatusEnum._internal("active");
  static const UserStatusEnum registered_ = UserStatusEnum._internal("registered");
  static const UserStatusEnum locked_ = UserStatusEnum._internal("locked");
  static const UserStatusEnum invited_ = UserStatusEnum._internal("invited");

  String toJson () {
    return value;
  }

  @override
  String toString () {
    return value;
  }

  static UserStatusEnum fromJson(String value) {
    return UserStatusEnumTypeTransformer().decode(value);
  }

  static List<UserStatusEnum> listFromJson(List<dynamic> json) {
    return json == null
      ? List<UserStatusEnum>()
      : json.map((value) => UserStatusEnum.fromJson(value)).toList();
  }
}

class UserStatusEnumTypeTransformer {

  dynamic encode(UserStatusEnum data) {
    return data.value;
  }

  UserStatusEnum decode(dynamic data) {
    switch (data) {
      case "active": return UserStatusEnum.active_;
      case "registered": return UserStatusEnum.registered_;
      case "locked": return UserStatusEnum.locked_;
      case "invited": return UserStatusEnum.invited_;
      default: return null;
    }
  }
}


