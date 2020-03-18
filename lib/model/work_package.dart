part of swagger.api;

class Work Package {
  
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
  

  Work Package Embedded embedded = null;
  

  Work Package Links links = null;
  
  Work Package();

  @override
  String toString() {
    return 'Work Package[id=$id, lockVersion=$lockVersion, percentageDone=$percentageDone, subject=$subject, description=$description, startDate=$startDate, dueDate=$dueDate, createdAt=$createdAt, updatedAt=$updatedAt, estimatedTime=$estimatedTime, embedded=$embedded, links=$links, ]';
  }

  Work Package.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        json['id']
    ;
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
    createdAt = json['createdAt'] == null ? null : DateTime.parse(json['createdAt']);
    updatedAt = json['updatedAt'] == null ? null : DateTime.parse(json['updatedAt']);
    estimatedTime =
        json['estimatedTime']
    ;
    embedded =
      
      
      new Work Package Embedded.fromJson(json['_embedded'])
;
    links =
      
      
      new Work Package Links.fromJson(json['_links'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'lockVersion': lockVersion,
      'percentageDone': percentageDone,
      'subject': subject,
      'description': description,
      'startDate': startDate == null ? '' : startDate.toUtc().toIso8601String(),
      'dueDate': dueDate == null ? '' : dueDate.toUtc().toIso8601String(),
      'createdAt': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'updatedAt': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
      'estimatedTime': estimatedTime,
      '_embedded': embedded,
      '_links': links
     };
  }

  static List<Work Package> listFromJson(List<dynamic> json) {
    return json == null ? new List<Work Package>() : json.map((value) => new Work Package.fromJson(value)).toList();
  }

  static Map<String, Work Package> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Work Package>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Work Package.fromJson(value));
    }
    return map;
  }
}

