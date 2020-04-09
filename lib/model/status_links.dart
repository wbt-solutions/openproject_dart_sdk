part of openproject_dart_sdk.api;

class StatusLinks {
  
  Link self = null;
  StatusLinks();

  @override
  String toString() {
    return 'StatusLinks[self=$self, ]';
  }

  StatusLinks.fromJson(Map<String, dynamic> json) {
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

  static List<StatusLinks> listFromJson(List<dynamic> json) {
    return json == null ? List<StatusLinks>() : json.map((value) => StatusLinks.fromJson(value)).toList();
  }

  static Map<String, StatusLinks> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, StatusLinks>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = StatusLinks.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of StatusLinks-objects as value to a dart map
  static Map<String, List<StatusLinks>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<StatusLinks>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = StatusLinks.listFromJson(value);
       });
     }
     return map;
  }
}

