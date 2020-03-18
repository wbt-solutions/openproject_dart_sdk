part of swagger.api;

class Users embedded {
  
  List<User> elements = [];
  
  Users embedded();

  @override
  String toString() {
    return 'Users embedded[elements=$elements, ]';
  }

  Users embedded.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    elements =
      User.listFromJson(json['elements'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'elements': elements
     };
  }

  static List<Users embedded> listFromJson(List<dynamic> json) {
    return json == null ? new List<Users embedded>() : json.map((value) => new Users embedded.fromJson(value)).toList();
  }

  static Map<String, Users embedded> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Users embedded>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Users embedded.fromJson(value));
    }
    return map;
  }
}

