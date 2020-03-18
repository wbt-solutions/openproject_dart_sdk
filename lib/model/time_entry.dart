part of swagger.api;

class Time entry {
  
  int id = null;
  

  String hours = null;
  

  String comment = null;
  

  DateTime spentOn = null;
  

  DateTime createdAt = null;
  

  DateTime updatedAt = null;
  

  TimeEntryEmbedded embedded = null;
  

  Time entry Links links = null;
  
  Time entry();

  @override
  String toString() {
    return 'Time entry[id=$id, hours=$hours, comment=$comment, spentOn=$spentOn, createdAt=$createdAt, updatedAt=$updatedAt, embedded=$embedded, links=$links, ]';
  }

  Time entry.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        json['id']
    ;
    hours =
        json['hours']
    ;
    comment =
        json['comment']
    ;
    spentOn =
      
      
      new DateTime.fromJson(json['spentOn'])
;
    createdAt = json['createdAt'] == null ? null : DateTime.parse(json['createdAt']);
    updatedAt = json['updatedAt'] == null ? null : DateTime.parse(json['updatedAt']);
    embedded =
      
      
      new TimeEntryEmbedded.fromJson(json['_embedded'])
;
    links =
      
      
      new Time entry Links.fromJson(json['_links'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'hours': hours,
      'comment': comment,
      'spentOn': spentOn,
      'createdAt': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'updatedAt': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
      '_embedded': embedded,
      '_links': links
     };
  }

  static List<Time entry> listFromJson(List<dynamic> json) {
    return json == null ? new List<Time entry>() : json.map((value) => new Time entry.fromJson(value)).toList();
  }

  static Map<String, Time entry> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Time entry>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Time entry.fromJson(value));
    }
    return map;
  }
}

