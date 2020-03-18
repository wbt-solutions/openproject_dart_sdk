part of swagger.api;

class Work Packages by Project {
    Work Packages by Project();

  @override
  String toString() {
    return 'Work Packages by Project[]';
  }

  Work Packages by Project.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Work Packages by Project> listFromJson(List<dynamic> json) {
    return json == null ? new List<Work Packages by Project>() : json.map((value) => new Work Packages by Project.fromJson(value)).toList();
  }

  static Map<String, Work Packages by Project> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Work Packages by Project>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Work Packages by Project.fromJson(value));
    }
    return map;
  }
}

