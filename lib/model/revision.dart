part of swagger.api;

class Revision {
    Revision();

  @override
  String toString() {
    return 'Revision[]';
  }

  Revision.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Revision> listFromJson(List<dynamic> json) {
    return json == null ? new List<Revision>() : json.map((value) => new Revision.fromJson(value)).toList();
  }

  static Map<String, Revision> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Revision>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Revision.fromJson(value));
    }
    return map;
  }
}

