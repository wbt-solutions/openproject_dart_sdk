part of openproject_dart_sdk.api;

class Priorities {
  
  int total = null;
  
  int count = null;
  
  PrioritiesEmbedded embedded = null;
  
  PrioritiesLinks links = null;
  Priorities();

  @override
  String toString() {
    return 'Priorities[total=$total, count=$count, embedded=$embedded, links=$links, ]';
  }

  Priorities.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    total = json['total'];
    count = json['count'];
    embedded = (json['_embedded'] == null) ?
      null :
      PrioritiesEmbedded.fromJson(json['_embedded']);
    links = (json['_links'] == null) ?
      null :
      PrioritiesLinks.fromJson(json['_links']);
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

  static List<Priorities> listFromJson(List<dynamic> json) {
    return json == null ? List<Priorities>() : json.map((value) => Priorities.fromJson(value)).toList();
  }

  static Map<String, Priorities> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Priorities>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Priorities.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Priorities-objects as value to a dart map
  static Map<String, List<Priorities>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Priorities>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Priorities.listFromJson(value);
       });
     }
     return map;
  }
}

