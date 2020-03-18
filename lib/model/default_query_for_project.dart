part of swagger.api;

class Default Query for Project {
    Default Query for Project();

  @override
  String toString() {
    return 'Default Query for Project[]';
  }

  Default Query for Project.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Default Query for Project> listFromJson(List<dynamic> json) {
    return json == null ? new List<Default Query for Project>() : json.map((value) => new Default Query for Project.fromJson(value)).toList();
  }

  static Map<String, Default Query for Project> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Default Query for Project>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Default Query for Project.fromJson(value));
    }
    return map;
  }
}

