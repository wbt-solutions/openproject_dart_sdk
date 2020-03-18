part of swagger.api;

class Time entries Links {
  
  Link self = null;
  

  Link jumpTo = null;
  

  Link changeSize = null;
  

  Link nextByOffset = null;
  
  Time entries Links();

  @override
  String toString() {
    return 'Time entries Links[self=$self, jumpTo=$jumpTo, changeSize=$changeSize, nextByOffset=$nextByOffset, ]';
  }

  Time entries Links.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    self =
      
      
      new Link.fromJson(json['self'])
;
    jumpTo =
      
      
      new Link.fromJson(json['jumpTo'])
;
    changeSize =
      
      
      new Link.fromJson(json['changeSize'])
;
    nextByOffset =
      
      
      new Link.fromJson(json['nextByOffset'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'self': self,
      'jumpTo': jumpTo,
      'changeSize': changeSize,
      'nextByOffset': nextByOffset
     };
  }

  static List<Time entries Links> listFromJson(List<dynamic> json) {
    return json == null ? new List<Time entries Links>() : json.map((value) => new Time entries Links.fromJson(value)).toList();
  }

  static Map<String, Time entries Links> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Time entries Links>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Time entries Links.fromJson(value));
    }
    return map;
  }
}

