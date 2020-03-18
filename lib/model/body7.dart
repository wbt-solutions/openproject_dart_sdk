part of swagger.api;

class Body7 {
  
  Apiv3customActionscustomActionIdexecuteLinksWorkPackage user = null;
  
  Body7();

  @override
  String toString() {
    return 'Body7[user=$user, ]';
  }

  Body7.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    user =
      
      
      new Apiv3customActionscustomActionIdexecuteLinksWorkPackage.fromJson(json['user'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'user': user
     };
  }

  static List<Body7> listFromJson(List<dynamic> json) {
    return json == null ? new List<Body7>() : json.map((value) => new Body7.fromJson(value)).toList();
  }

  static Map<String, Body7> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Body7>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Body7.fromJson(value));
    }
    return map;
  }
}

