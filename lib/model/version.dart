part of swagger.api;

class Version {
  
  int id = null;
  

  String name = null;
  

  Description description = null;
  

  DateTime startDate = null;
  

  DateTime endDate = null;
  

  String status = null;
  //enum statusEnum {  open,  };

  DateTime createdAt = null;
  

  DateTime updatedAt = null;
  

  Version Links links = null;
  
  Version();

  @override
  String toString() {
    return 'Version[id=$id, name=$name, description=$description, startDate=$startDate, endDate=$endDate, status=$status, createdAt=$createdAt, updatedAt=$updatedAt, links=$links, ]';
  }

  Version.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        json['id']
    ;
    name =
        json['name']
    ;
    description =
      
      
      new Description.fromJson(json['description'])
;
    startDate =
      
      
      new DateTime.fromJson(json['startDate'])
;
    endDate =
      
      
      new DateTime.fromJson(json['endDate'])
;
    status =
        json['status']
    ;
    createdAt = json['createdAt'] == null ? null : DateTime.parse(json['createdAt']);
    updatedAt = json['updatedAt'] == null ? null : DateTime.parse(json['updatedAt']);
    links =
      
      
      new Version Links.fromJson(json['_links'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'startDate': startDate,
      'endDate': endDate,
      'status': status,
      'createdAt': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'updatedAt': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
      '_links': links
     };
  }

  static List<Version> listFromJson(List<dynamic> json) {
    return json == null ? new List<Version>() : json.map((value) => new Version.fromJson(value)).toList();
  }

  static Map<String, Version> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Version>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Version.fromJson(value));
    }
    return map;
  }
}

