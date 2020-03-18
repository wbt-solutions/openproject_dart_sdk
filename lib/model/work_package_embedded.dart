part of swagger.api;

class Work Package Embedded {
  
  Work Package parent = null;
  

  Project project = null;
  

  WPType type = null;
  

  Version version = null;
  
  Work Package Embedded();

  @override
  String toString() {
    return 'Work Package Embedded[parent=$parent, project=$project, type=$type, version=$version, ]';
  }

  Work Package Embedded.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    parent =
      
      
      new Work Package.fromJson(json['parent'])
;
    project =
      
      
      new Project.fromJson(json['project'])
;
    type =
      
      
      new WPType.fromJson(json['type'])
;
    version =
      
      
      new Version.fromJson(json['version'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'parent': parent,
      'project': project,
      'type': type,
      'version': version
     };
  }

  static List<Work Package Embedded> listFromJson(List<dynamic> json) {
    return json == null ? new List<Work Package Embedded>() : json.map((value) => new Work Package Embedded.fromJson(value)).toList();
  }

  static Map<String, Work Package Embedded> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Work Package Embedded>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Work Package Embedded.fromJson(value));
    }
    return map;
  }
}

