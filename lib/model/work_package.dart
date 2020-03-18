part of openapi.api;

class WorkPackage {
  
  int id = null;
  
  int lockVersion = null;
  
  int percentageDone = null;
  
  String subject = null;
  
  Description description = null;
  
  DateTime startDate = null;
  
  DateTime dueDate = null;
  
  DateTime createdAt = null;
  
  DateTime updatedAt = null;
  
  String estimatedTime = null;
  
  WorkPackageEmbedded embedded = null;
  
  WorkPackageLinks links = null;
  WorkPackage();

  @override
  String toString() {
    return 'WorkPackage[id=$id, lockVersion=$lockVersion, percentageDone=$percentageDone, subject=$subject, description=$description, startDate=$startDate, dueDate=$dueDate, createdAt=$createdAt, updatedAt=$updatedAt, estimatedTime=$estimatedTime, embedded=$embedded, links=$links, ]';
  }

  WorkPackage.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    lockVersion = json['lockVersion'];
    percentageDone = json['percentageDone'];
    subject = json['subject'];
    description = (json['description'] == null) ?
      null :
      Description.fromJson(json['description']);
    startDate = (json['startDate'] == null) ?
      null :
      DateTime.parse(json['startDate']);
    dueDate = (json['dueDate'] == null) ?
      null :
      DateTime.parse(json['dueDate']);
    createdAt = (json['createdAt'] == null) ?
      null :
      DateTime.parse(json['createdAt']);
    updatedAt = (json['updatedAt'] == null) ?
      null :
      DateTime.parse(json['updatedAt']);
    estimatedTime = json['estimatedTime'];
    embedded = (json['_embedded'] == null) ?
      null :
      WorkPackageEmbedded.fromJson(json['_embedded']);
    links = (json['_links'] == null) ?
      null :
      WorkPackageLinks.fromJson(json['_links']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (lockVersion != null)
      json['lockVersion'] = lockVersion;
    if (percentageDone != null)
      json['percentageDone'] = percentageDone;
    if (subject != null)
      json['subject'] = subject;
    if (description != null)
      json['description'] = description;
    if (startDate != null)
      json['startDate'] = startDate == null ? null : startDate.toUtc().toIso8601String();
    if (dueDate != null)
      json['dueDate'] = dueDate == null ? null : dueDate.toUtc().toIso8601String();
    if (createdAt != null)
      json['createdAt'] = createdAt == null ? null : createdAt.toUtc().toIso8601String();
    if (updatedAt != null)
      json['updatedAt'] = updatedAt == null ? null : updatedAt.toUtc().toIso8601String();
    if (estimatedTime != null)
      json['estimatedTime'] = estimatedTime;
    if (embedded != null)
      json['_embedded'] = embedded;
    if (links != null)
      json['_links'] = links;
    return json;
  }

  static List<WorkPackage> listFromJson(List<dynamic> json) {
    return json == null ? List<WorkPackage>() : json.map((value) => WorkPackage.fromJson(value)).toList();
  }

  static Map<String, WorkPackage> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WorkPackage>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WorkPackage.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of WorkPackage-objects as value to a dart map
  static Map<String, List<WorkPackage>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<WorkPackage>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = WorkPackage.listFromJson(value);
       });
     }
     return map;
  }
}

