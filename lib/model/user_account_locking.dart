part of swagger.api;

class User Account Locking {
    User Account Locking();

  @override
  String toString() {
    return 'User Account Locking[]';
  }

  User Account Locking.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<User Account Locking> listFromJson(List<dynamic> json) {
    return json == null ? new List<User Account Locking>() : json.map((value) => new User Account Locking.fromJson(value)).toList();
  }

  static Map<String, User Account Locking> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, User Account Locking>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new User Account Locking.fromJson(value));
    }
    return map;
  }
}

