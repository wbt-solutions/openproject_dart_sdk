part of openapi.api;

class WorkPackageEmbedded {
  
  WorkPackage parent = null;
  
  Project project = null;
  
  WPType type = null;
  
  Version version = null;
  WorkPackageEmbedded();

  @override
  String toString() {
    return 'WorkPackageEmbedded[parent=$parent, project=$project, type=$type, version=$version, ]';
  }

  WorkPackageEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    parent = (json['parent'] == null) ?
      null :
      WorkPackage.fromJson(json['parent']);
    project = (json['project'] == null) ?
      null :
      Project.fromJson(json['project']);
    type = (json['type'] == null) ?
      null :
      WPType.fromJson(json['type']);
    version = (json['version'] == null) ?
      null :
      Version.fromJson(json['version']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (parent != null)
      json['parent'] = parent;
    if (project != null)
      json['project'] = project;
    if (type != null)
      json['type'] = type;
    if (version != null)
      json['version'] = version;
    return json;
  }

  static List<WorkPackageEmbedded> listFromJson(List<dynamic> json) {
    return json == null ? List<WorkPackageEmbedded>() : json.map((value) => WorkPackageEmbedded.fromJson(value)).toList();
  }

  static Map<String, WorkPackageEmbedded> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WorkPackageEmbedded>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WorkPackageEmbedded.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of WorkPackageEmbedded-objects as value to a dart map
  static Map<String, List<WorkPackageEmbedded>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<WorkPackageEmbedded>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = WorkPackageEmbedded.listFromJson(value);
       });
     }
     return map;
  }
}

