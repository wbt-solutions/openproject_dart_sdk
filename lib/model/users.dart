part of swagger.api;

class Users {
  
  int total = null;
  

  int count = null;
  

  Users embedded embedded = null;
  
  Users();

  @override
  String toString() {
    return 'Users[total=$total, count=$count, embedded=$embedded, ]';
  }

  Users.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    total =
        json['total']
    ;
    count =
        json['count']
    ;
    embedded =
      
      
      new Users embedded.fromJson(json['_embedded'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'total': total,
      'count': count,
      '_embedded': embedded
     };
  }

  static List<Users> listFromJson(List<dynamic> json) {
    return json == null ? new List<Users>() : json.map((value) => new Users.fromJson(value)).toList();
  }

  static Map<String, Users> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Users>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Users.fromJson(value));
    }
    return map;
  }
}

