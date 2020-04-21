part of openproject_dart_sdk.api;

class PrioritiesLinks {
  
  Link self = null;
  PrioritiesLinks();

  @override
  String toString() {
    return 'PrioritiesLinks[self=$self, ]';
  }

  PrioritiesLinks.fromJson(Map<String, dynamic> json) {
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

  static List<PrioritiesLinks> listFromJson(List<dynamic> json) {
    return json == null ? List<PrioritiesLinks>() : json.map((value) => PrioritiesLinks.fromJson(value)).toList();
  }

  static Map<String, PrioritiesLinks> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, PrioritiesLinks>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PrioritiesLinks.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PrioritiesLinks-objects as value to a dart map
  static Map<String, List<PrioritiesLinks>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<PrioritiesLinks>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = PrioritiesLinks.listFromJson(value);
       });
     }
     return map;
  }
}

