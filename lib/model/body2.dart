part of swagger.api;

class Body2 {
  
  num lockVersion = null;
  

  String type = null;
  

  String subject = null;
  
  Body2();

  @override
  String toString() {
    return 'Body2[lockVersion=$lockVersion, type=$type, subject=$subject, ]';
  }

  Body2.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    lockVersion =
        json['lockVersion']
    ;
    type =
        json['_type']
    ;
    subject =
        json['subject']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'lockVersion': lockVersion,
      '_type': type,
      'subject': subject
     };
  }

  static List<Body2> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body2>() : json.map((value) => new Body2.fromJson(value)).toList();
  }

  static Map<String, Body2> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body2>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body2.fromJson(value));
    }
    return map;
  }
}

