part of swagger.api;

class Role {
    Role();

  @override
  String toString() {
    return 'Role[]';
  }

  Role.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Role> listFromJson(List<dynamic> json) {
    return json == null ? new List<Role>() : json.map((value) => new Role.fromJson(value)).toList();
  }

  static Map<String, Role> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Role>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Role.fromJson(value));
    }
    return map;
  }
}

