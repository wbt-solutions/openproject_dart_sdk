part of openproject_dart_sdk.api;

class StatusesLinks {
  
  Link self = null;
  StatusesLinks();

  @override
  String toString() {
    return 'StatusesLinks[self=$self, ]';
  }

  StatusesLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    self = (json['self'] == null) ?
      null :
      Link.fromJson(json['self']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (self != null)
      json['self'] = self;
    return json;
  }

  static List<StatusesLinks> listFromJson(List<dynamic> json) {
    return json == null ? List<StatusesLinks>() : json.map((value) => StatusesLinks.fromJson(value)).toList();
  }

  static Map<String, StatusesLinks> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, StatusesLinks>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = StatusesLinks.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of StatusesLinks-objects as value to a dart map
  static Map<String, List<StatusesLinks>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<StatusesLinks>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = StatusesLinks.listFromJson(value);
       });
     }
     return map;
  }
}

