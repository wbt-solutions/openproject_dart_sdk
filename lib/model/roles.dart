part of swagger.api;

class Roles {
    Roles();

  @override
  String toString() {
    return 'Roles[]';
  }

  Roles.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Roles> listFromJson(List<dynamic> json) {
    return json == null ? new List<Roles>() : json.map((value) => new Roles.fromJson(value)).toList();
  }

  static Map<String, Roles> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Roles>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Roles.fromJson(value));
    }
    return map;
  }
}

