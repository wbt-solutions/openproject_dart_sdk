part of openapi.api;

class WPTypeLinks {
  
  Link self = null;
  WPTypeLinks();

  @override
  String toString() {
    return 'WPTypeLinks[self=$self, ]';
  }

  WPTypeLinks.fromJson(Map<String, dynamic> json) {
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

  static List<WPTypeLinks> listFromJson(List<dynamic> json) {
    return json == null ? List<WPTypeLinks>() : json.map((value) => WPTypeLinks.fromJson(value)).toList();
  }

  static Map<String, WPTypeLinks> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WPTypeLinks>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WPTypeLinks.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of WPTypeLinks-objects as value to a dart map
  static Map<String, List<WPTypeLinks>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<WPTypeLinks>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = WPTypeLinks.listFromJson(value);
       });
     }
     return map;
  }
}

