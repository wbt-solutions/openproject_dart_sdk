part of swagger.api;

class Time entries {
  
  int total = null;
  

  int count = null;
  

  TimeEntriesEmbedded embedded = null;
  

  Time entries Links links = null;
  
  Time entries();

  @override
  String toString() {
    return 'Time entries[total=$total, count=$count, embedded=$embedded, links=$links, ]';
  }

  Time entries.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    total =
        json['total']
    ;
    count =
        json['count']
    ;
    embedded =
      
      
      new TimeEntriesEmbedded.fromJson(json['_embedded'])
;
    links =
      
      
      new Time entries Links.fromJson(json['_links'])
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

  static List<Time entries> listFromJson(List<dynamic> json) {
    return json == null ? new List<Time entries>() : json.map((value) => new Time entries.fromJson(value)).toList();
  }

  static Map<String, Time entries> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Time entries>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Time entries.fromJson(value));
    }
    return map;
  }
}

