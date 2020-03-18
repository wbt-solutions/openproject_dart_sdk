part of swagger.api;

class Attachments by work package {
    Attachments by work package();

  @override
  String toString() {
    return 'Attachments by work package[]';
  }

  Attachments by work package.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Attachments by work package> listFromJson(List<dynamic> json) {
    return json == null ? new List<Attachments by work package>() : json.map((value) => new Attachments by work package.fromJson(value)).toList();
  }

  static Map<String, Attachments by work package> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Attachments by work package>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Attachments by work package.fromJson(value));
    }
    return map;
  }
}

