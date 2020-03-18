part of swagger.api;

class TimeEntriesEmbedded {
  
  List<Time entry> elements = [];
  
  TimeEntriesEmbedded();

  @override
  String toString() {
    return 'TimeEntriesEmbedded[elements=$elements, ]';
  }

  TimeEntriesEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    elements =
      Time entry.listFromJson(json['elements'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'elements': elements
     };
  }

  static List<TimeEntriesEmbedded> listFromJson(List<dynamic> json) {
    return json == null ? new List<TimeEntriesEmbedded>() : json.map((value) => new TimeEntriesEmbedded.fromJson(value)).toList();
  }

  static Map<String, TimeEntriesEmbedded> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TimeEntriesEmbedded>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TimeEntriesEmbedded.fromJson(value));
    }
    return map;
  }
}

