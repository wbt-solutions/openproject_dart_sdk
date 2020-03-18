part of swagger.api;

class Relations {
    Relations();

  @override
  String toString() {
    return 'Relations[]';
  }

  Relations.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Relations> listFromJson(List<dynamic> json) {
    return json == null ? new List<Relations>() : json.map((value) => new Relations.fromJson(value)).toList();
  }

  static Map<String, Relations> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Relations>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Relations.fromJson(value));
    }
    return map;
  }
}

