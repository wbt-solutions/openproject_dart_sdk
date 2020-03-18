part of swagger.api;

class Statuses {
    Statuses();

  @override
  String toString() {
    return 'Statuses[]';
  }

  Statuses.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Statuses> listFromJson(List<dynamic> json) {
    return json == null ? new List<Statuses>() : json.map((value) => new Statuses.fromJson(value)).toList();
  }

  static Map<String, Statuses> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Statuses>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Statuses.fromJson(value));
    }
    return map;
  }
}

