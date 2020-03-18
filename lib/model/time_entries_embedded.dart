part of openapi.api;

class TimeEntriesEmbedded {
  
  List<TimeEntry> elements = [];
  TimeEntriesEmbedded();

  @override
  String toString() {
    return 'TimeEntriesEmbedded[elements=$elements, ]';
  }

  TimeEntriesEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    elements = (json['elements'] == null) ?
      null :
      TimeEntry.listFromJson(json['elements']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (elements != null)
      json['elements'] = elements;
    return json;
  }

  static List<TimeEntriesEmbedded> listFromJson(List<dynamic> json) {
    return json == null ? List<TimeEntriesEmbedded>() : json.map((value) => TimeEntriesEmbedded.fromJson(value)).toList();
  }

  static Map<String, TimeEntriesEmbedded> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TimeEntriesEmbedded>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TimeEntriesEmbedded.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TimeEntriesEmbedded-objects as value to a dart map
  static Map<String, List<TimeEntriesEmbedded>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<TimeEntriesEmbedded>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = TimeEntriesEmbedded.listFromJson(value);
       });
     }
     return map;
  }
}

