part of swagger.api;

class Work Packages {
  
  int total = null;
  

  int count = null;
  

  Work Packages embedded embedded = null;
  
  Work Packages();

  @override
  String toString() {
    return 'Work Packages[total=$total, count=$count, embedded=$embedded, ]';
  }

  Work Packages.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    total =
        json['total']
    ;
    count =
        json['count']
    ;
    embedded =
      
      
      new Work Packages embedded.fromJson(json['_embedded'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'total': total,
      'count': count,
      '_embedded': embedded
     };
  }

  static List<Work Packages> listFromJson(List<dynamic> json) {
    return json == null ? new List<Work Packages>() : json.map((value) => new Work Packages.fromJson(value)).toList();
  }

  static Map<String, Work Packages> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Work Packages>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Work Packages.fromJson(value));
    }
    return map;
  }
}

