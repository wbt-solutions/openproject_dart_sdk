part of swagger.api;

class Work Package Patch {
  
  int lockVersion = null;
  

  int percentageDone = null;
  

  String subject = null;
  

  Description description = null;
  

  DateTime startDate = null;
  

  DateTime dueDate = null;
  

  String estimatedTime = null;
  

  Work Package Links links = null;
  
  Work Package Patch();

  @override
  String toString() {
    return 'Work Package Patch[lockVersion=$lockVersion, percentageDone=$percentageDone, subject=$subject, description=$description, startDate=$startDate, dueDate=$dueDate, estimatedTime=$estimatedTime, links=$links, ]';
  }

  Work Package Patch.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    lockVersion =
        json['lockVersion']
    ;
    percentageDone =
        json['percentageDone']
    ;
    subject =
        json['subject']
    ;
    description =
      
      
      new Description.fromJson(json['description'])
;
    startDate = json['startDate'] == null ? null : DateTime.parse(json['startDate']);
    dueDate = json['dueDate'] == null ? null : DateTime.parse(json['dueDate']);
    estimatedTime =
        json['estimatedTime']
    ;
    links =
      
      
      new Work Package Links.fromJson(json['_links'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'lockVersion': lockVersion,
      'percentageDone': percentageDone,
      'subject': subject,
      'description': description,
      'startDate': startDate == null ? '' : startDate.toUtc().toIso8601String(),
      'dueDate': dueDate == null ? '' : dueDate.toUtc().toIso8601String(),
      'estimatedTime': estimatedTime,
      '_links': links
     };
  }

  static List<Work Package Patch> listFromJson(List<dynamic> json) {
    return json == null ? new List<Work Package Patch>() : json.map((value) => new Work Package Patch.fromJson(value)).toList();
  }

  static Map<String, Work Package Patch> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Work Package Patch>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Work Package Patch.fromJson(value));
    }
    return map;
  }
}

