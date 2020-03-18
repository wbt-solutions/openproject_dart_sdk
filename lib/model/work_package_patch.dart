part of openapi.api;

class WorkPackagePatch {
  
  int lockVersion = null;
  
  int percentageDone = null;
  
  String subject = null;
  
  Description description = null;
  
  DateTime startDate = null;
  
  DateTime dueDate = null;
  
  String estimatedTime = null;
  
  WorkPackageLinks links = null;
  WorkPackagePatch();

  @override
  String toString() {
    return 'WorkPackagePatch[lockVersion=$lockVersion, percentageDone=$percentageDone, subject=$subject, description=$description, startDate=$startDate, dueDate=$dueDate, estimatedTime=$estimatedTime, links=$links, ]';
  }

  WorkPackagePatch.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
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
    estimatedTime = json['estimatedTime'];
    links = (json['_links'] == null) ?
      null :
      WorkPackageLinks.fromJson(json['_links']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
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
    if (estimatedTime != null)
      json['estimatedTime'] = estimatedTime;
    if (links != null)
      json['_links'] = links;
    return json;
  }

  static List<WorkPackagePatch> listFromJson(List<dynamic> json) {
    return json == null ? List<WorkPackagePatch>() : json.map((value) => WorkPackagePatch.fromJson(value)).toList();
  }

  static Map<String, WorkPackagePatch> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WorkPackagePatch>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WorkPackagePatch.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of WorkPackagePatch-objects as value to a dart map
  static Map<String, List<WorkPackagePatch>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<WorkPackagePatch>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = WorkPackagePatch.listFromJson(value);
       });
     }
     return map;
  }
}

