part of swagger.api;

class Body4 {
  
  bool accessibilityMode = null;
  

  String timeZone = null;
  
  Body4();

  @override
  String toString() {
    return 'Body4[accessibilityMode=$accessibilityMode, timeZone=$timeZone, ]';
  }

  Body4.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    accessibilityMode =
        json['accessibilityMode']
    ;
    timeZone =
        json['timeZone']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'accessibilityMode': accessibilityMode,
      'timeZone': timeZone
     };
  }

  static List<Body4> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body4>() : json.map((value) => new Body4.fromJson(value)).toList();
  }

  static Map<String, Body4> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body4>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body4.fromJson(value));
    }
    return map;
  }
}

