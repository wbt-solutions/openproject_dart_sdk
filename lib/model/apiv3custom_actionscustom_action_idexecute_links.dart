part of swagger.api;

class Apiv3customActionscustomActionIdexecuteLinks {
  
  Apiv3customActionscustomActionIdexecuteLinksWorkPackage workPackage = null;
  
  Apiv3customActionscustomActionIdexecuteLinks();

  @override
  String toString() {
    return 'Apiv3customActionscustomActionIdexecuteLinks[workPackage=$workPackage, ]';
  }

  Apiv3customActionscustomActionIdexecuteLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    workPackage =
      
      
      new Apiv3customActionscustomActionIdexecuteLinksWorkPackage.fromJson(json['workPackage'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'workPackage': workPackage
     };
  }

  static List<Apiv3customActionscustomActionIdexecuteLinks> listFromJson(List<dynamic> json) {
    return json == null ? new List<Apiv3customActionscustomActionIdexecuteLinks>() : json.map((value) => new Apiv3customActionscustomActionIdexecuteLinks.fromJson(value)).toList();
  }

  static Map<String, Apiv3customActionscustomActionIdexecuteLinks> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Apiv3customActionscustomActionIdexecuteLinks>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Apiv3customActionscustomActionIdexecuteLinks.fromJson(value));
    }
    return map;
  }
}

