part of openproject_dart_sdk.api;

class PriorityLinks {
  
  Link self;

  PriorityLinks({
    this.self,
  });

  @override
  String toString() {
    return 'PriorityLinks[self=$self, ]';
  }

  PriorityLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    self = (json['self'] == null) ?
      null :
      Link.fromJson(json['self']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (self != null)
      json['self'] = self;
    return json;
  }

  static List<PriorityLinks> listFromJson(List<dynamic> json) {
    return json == null ? List<PriorityLinks>() : json.map((value) => PriorityLinks.fromJson(value)).toList();
  }

  static Map<String, PriorityLinks> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, PriorityLinks>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PriorityLinks.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PriorityLinks-objects as value to a dart map
  static Map<String, List<PriorityLinks>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<PriorityLinks>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = PriorityLinks.listFromJson(value);
      });
    }
    return map;
  }
}

