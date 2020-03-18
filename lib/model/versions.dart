part of swagger.api;

class Versions {
  
  int total = null;
  

  int count = null;
  

  Versions embedded embedded = null;
  
  Versions();

  @override
  String toString() {
    return 'Versions[total=$total, count=$count, embedded=$embedded, ]';
  }

  Versions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    total =
        json['total']
    ;
    count =
        json['count']
    ;
    embedded =
      
      
      new Versions embedded.fromJson(json['_embedded'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'total': total,
      'count': count,
      '_embedded': embedded
     };
  }

  static List<Versions> listFromJson(List<dynamic> json) {
    return json == null ? new List<Versions>() : json.map((value) => new Versions.fromJson(value)).toList();
  }

  static Map<String, Versions> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Versions>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Versions.fromJson(value));
    }
    return map;
  }
}

