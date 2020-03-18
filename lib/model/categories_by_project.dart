part of swagger.api;

class Categories by Project {
    Categories by Project();

  @override
  String toString() {
    return 'Categories by Project[]';
  }

  Categories by Project.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Categories by Project> listFromJson(List<dynamic> json) {
    return json == null ? new List<Categories by Project>() : json.map((value) => new Categories by Project.fromJson(value)).toList();
  }

  static Map<String, Categories by Project> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Categories by Project>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Categories by Project.fromJson(value));
    }
    return map;
  }
}

