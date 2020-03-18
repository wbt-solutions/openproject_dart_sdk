part of swagger.api;

class Body1 {
  
  String lockVersion = null;
  

  Apiv3customActionscustomActionIdexecuteLinks links = null;
  
  Body1();

  @override
  String toString() {
    return 'Body1[lockVersion=$lockVersion, links=$links, ]';
  }

  Body1.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    lockVersion =
        json['lockVersion']
    ;
    links =
      
      
      new Apiv3customActionscustomActionIdexecuteLinks.fromJson(json['_links'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'lockVersion': lockVersion,
      '_links': links
     };
  }

  static List<Body1> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body1>() : json.map((value) => new Body1.fromJson(value)).toList();
  }

  static Map<String, Body1> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body1>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body1.fromJson(value));
    }
    return map;
  }
}

