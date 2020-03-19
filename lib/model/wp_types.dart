part of openproject_dart_sdk.api;

class WPTypes {
  
  int total = null;
  
  int count = null;
  
  WPTypesEmbedded embedded = null;
  
  WPTypeLinks links = null;
  WPTypes();

  @override
  String toString() {
    return 'WPTypes[total=$total, count=$count, embedded=$embedded, links=$links, ]';
  }

  WPTypes.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    total = json['total'];
    count = json['count'];
    embedded = (json['_embedded'] == null) ?
      null :
      WPTypesEmbedded.fromJson(json['_embedded']);
    links = (json['_links'] == null) ?
      null :
      WPTypeLinks.fromJson(json['_links']);
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

  static List<WPTypes> listFromJson(List<dynamic> json) {
    return json == null ? List<WPTypes>() : json.map((value) => WPTypes.fromJson(value)).toList();
  }

  static Map<String, WPTypes> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WPTypes>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WPTypes.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of WPTypes-objects as value to a dart map
  static Map<String, List<WPTypes>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<WPTypes>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = WPTypes.listFromJson(value);
       });
     }
     return map;
  }
}

