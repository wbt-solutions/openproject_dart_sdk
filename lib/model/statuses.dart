part of openproject_dart_sdk.api;

class Statuses {
  
  int total = null;
  
  int count = null;
  
  StatusesEmbedded embedded = null;
  
  StatusesLinks links = null;
  Statuses();

  @override
  String toString() {
    return 'Statuses[total=$total, count=$count, embedded=$embedded, links=$links, ]';
  }

  Statuses.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    total = json['total'];
    count = json['count'];
    embedded = (json['_embedded'] == null) ?
      null :
      StatusesEmbedded.fromJson(json['_embedded']);
    links = (json['_links'] == null) ?
      null :
      StatusesLinks.fromJson(json['_links']);
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

  static List<Statuses> listFromJson(List<dynamic> json) {
    return json == null ? List<Statuses>() : json.map((value) => Statuses.fromJson(value)).toList();
  }

  static Map<String, Statuses> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Statuses>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Statuses.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Statuses-objects as value to a dart map
  static Map<String, List<Statuses>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Statuses>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Statuses.listFromJson(value);
       });
     }
     return map;
  }
}

