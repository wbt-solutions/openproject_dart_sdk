part of swagger.api;

class Revisions {
    Revisions();

  @override
  String toString() {
    return 'Revisions[]';
  }

  Revisions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Revisions> listFromJson(List<dynamic> json) {
    return json == null ? new List<Revisions>() : json.map((value) => new Revisions.fromJson(value)).toList();
  }

  static Map<String, Revisions> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Revisions>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Revisions.fromJson(value));
    }
    return map;
  }
}

