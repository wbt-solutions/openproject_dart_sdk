part of openapi.api;

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
    total = json['total'];
    count = json['count'];
    embedded = (json['_embedded'] == null) ?
      null :
      ProjectsEmbedded.fromJson(json['_embedded']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (total != null)
      json['total'] = total;
    if (count != null)
      json['count'] = count;
    if (embedded != null)
      json['_embedded'] = embedded;
    return json;
  }

  static List<Projects> listFromJson(List<dynamic> json) {
    return json == null ? List<Projects>() : json.map((value) => Projects.fromJson(value)).toList();
  }

  static Map<String, Projects> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Projects>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Projects.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Projects-objects as value to a dart map
  static Map<String, List<Projects>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Projects>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Projects.listFromJson(value);
       });
     }
     return map;
  }
}

