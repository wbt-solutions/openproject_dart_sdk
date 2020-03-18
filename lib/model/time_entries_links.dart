part of openapi.api;

class TimeEntriesLinks {
  
  Link self = null;
  
  Link jumpTo = null;
  
  Link changeSize = null;
  
  Link nextByOffset = null;
  TimeEntriesLinks();

  @override
  String toString() {
    return 'TimeEntriesLinks[self=$self, jumpTo=$jumpTo, changeSize=$changeSize, nextByOffset=$nextByOffset, ]';
  }

  TimeEntriesLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    self = (json['self'] == null) ?
      null :
      Link.fromJson(json['self']);
    jumpTo = (json['jumpTo'] == null) ?
      null :
      Link.fromJson(json['jumpTo']);
    changeSize = (json['changeSize'] == null) ?
      null :
      Link.fromJson(json['changeSize']);
    nextByOffset = (json['nextByOffset'] == null) ?
      null :
      Link.fromJson(json['nextByOffset']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (self != null)
      json['self'] = self;
    if (jumpTo != null)
      json['jumpTo'] = jumpTo;
    if (changeSize != null)
      json['changeSize'] = changeSize;
    if (nextByOffset != null)
      json['nextByOffset'] = nextByOffset;
    return json;
  }

  static List<TimeEntriesLinks> listFromJson(List<dynamic> json) {
    return json == null ? List<TimeEntriesLinks>() : json.map((value) => TimeEntriesLinks.fromJson(value)).toList();
  }

  static Map<String, TimeEntriesLinks> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, TimeEntriesLinks>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TimeEntriesLinks.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TimeEntriesLinks-objects as value to a dart map
  static Map<String, List<TimeEntriesLinks>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<TimeEntriesLinks>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = TimeEntriesLinks.listFromJson(value);
       });
     }
     return map;
  }
}

