part of swagger.api;

class Project {
  
  int id = null;
  

  String name = null;
  

  String identifier = null;
  

  DateTime spentOn = null;
  

  DateTime createdAt = null;
  

  DateTime updatedAt = null;
  

  TimeEntryEmbedded embedded = null;
  
  Project();

  @override
  String toString() {
    return 'Project[id=$id, name=$name, identifier=$identifier, spentOn=$spentOn, createdAt=$createdAt, updatedAt=$updatedAt, embedded=$embedded, ]';
  }

  Project.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        json['id']
    ;
    name =
        json['name']
    ;
    identifier =
        json['identifier']
    ;
    spentOn =
      
      
      new DateTime.fromJson(json['spentOn'])
;
    createdAt = json['createdAt'] == null ? null : DateTime.parse(json['createdAt']);
    updatedAt = json['updatedAt'] == null ? null : DateTime.parse(json['updatedAt']);
    embedded =
      
      
      new TimeEntryEmbedded.fromJson(json['_embedded'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'identifier': identifier,
      'spentOn': spentOn,
      'createdAt': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'updatedAt': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
      '_embedded': embedded
     };
  }

  static List<Project> listFromJson(List<dynamic> json) {
    return json == null ? new List<Project>() : json.map((value) => new Project.fromJson(value)).toList();
  }

  static Map<String, Project> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Project>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Project.fromJson(value));
    }
    return map;
  }
}

