part of openproject_dart_sdk.api;

class Users {
  
  int total = null;
  
  int count = null;
  
  UsersEmbedded embedded = null;
  Users();

  @override
  String toString() {
    return 'Users[total=$total, count=$count, embedded=$embedded, ]';
  }

  Users.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    total = json['total'];
    count = json['count'];
    embedded = (json['_embedded'] == null) ?
      null :
      UsersEmbedded.fromJson(json['_embedded']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (total != null)
      json['total'] = total;
    if (count != null)
      json['count'] = count;
    if (embedded != null)
      json['_embedded'] = embedded;
    return json;
  }

  static List<Users> listFromJson(List<dynamic> json) {
    return json == null ? List<Users>() : json.map((value) => Users.fromJson(value)).toList();
  }

  static Map<String, Users> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Users>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Users.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Users-objects as value to a dart map
  static Map<String, List<Users>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Users>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Users.listFromJson(value);
       });
     }
     return map;
  }
}

