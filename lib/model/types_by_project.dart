part of swagger.api;

class Types by Project {
    Types by Project();

  @override
  String toString() {
    return 'Types by Project[]';
  }

  Types by Project.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Types by Project> listFromJson(List<dynamic> json) {
    return json == null ? new List<Types by Project>() : json.map((value) => new Types by Project.fromJson(value)).toList();
  }

  static Map<String, Types by Project> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Types by Project>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Types by Project.fromJson(value));
    }
    return map;
  }
}

