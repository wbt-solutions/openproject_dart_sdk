part of swagger.api;

class Projects {
  
  int total = null;
  

  int count = null;
  

  ProjectsEmbedded embedded = null;
  
  Projects();

  @override
  String toString() {
    return 'Projects[total=$total, count=$count, embedded=$embedded, ]';
  }

  Projects.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    total =
        json['total']
    ;
    count =
        json['count']
    ;
    embedded =
      
      
      new ProjectsEmbedded.fromJson(json['_embedded'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'total': total,
      'count': count,
      '_embedded': embedded
     };
  }

  static List<Projects> listFromJson(List<dynamic> json) {
    return json == null ? new List<Projects>() : json.map((value) => new Projects.fromJson(value)).toList();
  }

  static Map<String, Projects> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Projects>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Projects.fromJson(value));
    }
    return map;
  }
}

