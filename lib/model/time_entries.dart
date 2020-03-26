part of openproject_dart_sdk.api;

class TimeEntries {
  
  int total = null;
  
  int count = null;
  
  TimeEntriesEmbedded embedded = null;
  
  TimeEntriesLinks links = null;
  TimeEntries();

  @override
  String toString() {
    return 'TimeEntries[total=$total, count=$count, embedded=$embedded, links=$links, ]';
  }

  TimeEntries.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    total = json['total'];
    count = json['count'];
    embedded = (json['_embedded'] == null) ?
      null :
      TimeEntriesEmbedded.fromJson(json['_embedded']);
    links = (json['_links'] == null) ?
      null :
      TimeEntriesLinks.fromJson(json['_links']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (total != null)
      json['total'] = total;
    if (count != null)
      json['count'] = count;
    if (embedded != null)
      json['_embedded'] = embedded;
    if (links != null)
      json['_links'] = links;
    return json;
  }

  static List<TimeEntries> listFromJson(List<dynamic> json) {
    return json == null ? List<TimeEntries>() : json.map((value) => TimeEntries.fromJson(value)).toList();
  }

  static Map<String, TimeEntries> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TimeEntries>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TimeEntries.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TimeEntries-objects as value to a dart map
  static Map<String, List<TimeEntries>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<TimeEntries>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = TimeEntries.listFromJson(value);
       });
     }
     return map;
  }
}

