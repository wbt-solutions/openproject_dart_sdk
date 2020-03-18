part of swagger.api;

class Body8 {
  
  Apiv3activitiesidComment comment = null;
  
  Body8();

  @override
  String toString() {
    return 'Body8[comment=$comment, ]';
  }

  Body8.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    comment =
      
      
      new Apiv3activitiesidComment.fromJson(json['comment'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'comment': comment
     };
  }

  static List<Body8> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body8>() : json.map((value) => new Body8.fromJson(value)).toList();
  }

  static Map<String, Body8> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body8>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body8.fromJson(value));
    }
    return map;
  }
}

