part of swagger.api;

class Versions embedded {
  
  List<Version> elements = [];
  
  Versions embedded();

  @override
  String toString() {
    return 'Versions embedded[elements=$elements, ]';
  }

  Versions embedded.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    elements =
      Version.listFromJson(json['elements'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'elements': elements
     };
  }

  static List<Versions embedded> listFromJson(List<dynamic> json) {
    return json == null ? new List<Versions embedded>() : json.map((value) => new Versions embedded.fromJson(value)).toList();
  }

  static Map<String, Versions embedded> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Versions embedded>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Versions embedded.fromJson(value));
    }
    return map;
  }
}

