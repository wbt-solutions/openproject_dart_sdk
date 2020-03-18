part of swagger.api;

class WPType Links {
  
  Link self = null;
  
  WPType Links();

  @override
  String toString() {
    return 'WPType Links[self=$self, ]';
  }

  WPType Links.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    self =
      
      
      new Link.fromJson(json['self'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'self': self
     };
  }

  static List<WPType Links> listFromJson(List<dynamic> json) {
    return json == null ? new List<WPType Links>() : json.map((value) => new WPType Links.fromJson(value)).toList();
  }

  static Map<String, WPType Links> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WPType Links>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WPType Links.fromJson(value));
    }
    return map;
  }
}

