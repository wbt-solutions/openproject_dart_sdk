part of swagger.api;

class WPTypes {
  
  int total = null;
  

  int count = null;
  

  WPTypesEmbedded embedded = null;
  

  WPType Links links = null;
  
  WPTypes();

  @override
  String toString() {
    return 'WPTypes[total=$total, count=$count, embedded=$embedded, links=$links, ]';
  }

  WPTypes.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    total =
        json['total']
    ;
    count =
        json['count']
    ;
    embedded =
      
      
      new WPTypesEmbedded.fromJson(json['_embedded'])
;
    links =
      
      
      new WPType Links.fromJson(json['_links'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'total': total,
      'count': count,
      '_embedded': embedded,
      '_links': links
     };
  }

  static List<WPTypes> listFromJson(List<dynamic> json) {
    return json == null ? new List<WPTypes>() : json.map((value) => new WPTypes.fromJson(value)).toList();
  }

  static Map<String, WPTypes> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WPTypes>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WPTypes.fromJson(value));
    }
    return map;
  }
}

