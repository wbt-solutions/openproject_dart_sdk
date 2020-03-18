part of swagger.api;

class Work Packages embedded {
  
  List<Work Package> elements = [];
  
  Work Packages embedded();

  @override
  String toString() {
    return 'Work Packages embedded[elements=$elements, ]';
  }

  Work Packages embedded.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    elements =
      Work Package.listFromJson(json['elements'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'elements': elements
     };
  }

  static List<Work Packages embedded> listFromJson(List<dynamic> json) {
    return json == null ? new List<Work Packages embedded>() : json.map((value) => new Work Packages embedded.fromJson(value)).toList();
  }

  static Map<String, Work Packages embedded> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Work Packages embedded>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Work Packages embedded.fromJson(value));
    }
    return map;
  }
}

