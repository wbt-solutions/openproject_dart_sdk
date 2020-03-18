part of swagger.api;

class Version Links {
  
  Link self = null;
  

  Link definingProject = null;
  

  Link availableInProjects = null;
  
  Version Links();

  @override
  String toString() {
    return 'Version Links[self=$self, definingProject=$definingProject, availableInProjects=$availableInProjects, ]';
  }

  Version Links.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    self =
      
      
      new Link.fromJson(json['self'])
;
    definingProject =
      
      
      new Link.fromJson(json['definingProject'])
;
    availableInProjects =
      
      
      new Link.fromJson(json['availableInProjects'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'self': self,
      'definingProject': definingProject,
      'availableInProjects': availableInProjects
     };
  }

  static List<Version Links> listFromJson(List<dynamic> json) {
    return json == null ? new List<Version Links>() : json.map((value) => new Version Links.fromJson(value)).toList();
  }

  static Map<String, Version Links> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Version Links>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Version Links.fromJson(value));
    }
    return map;
  }
}

