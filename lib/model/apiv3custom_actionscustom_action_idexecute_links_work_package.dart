part of swagger.api;

class Apiv3customActionscustomActionIdexecuteLinksWorkPackage {
  
  String href = null;
  
  Apiv3customActionscustomActionIdexecuteLinksWorkPackage();

  @override
  String toString() {
    return 'Apiv3customActionscustomActionIdexecuteLinksWorkPackage[href=$href, ]';
  }

  Apiv3customActionscustomActionIdexecuteLinksWorkPackage.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    href =
        json['href']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'href': href
     };
  }

  static List<Apiv3customActionscustomActionIdexecuteLinksWorkPackage> listFromJson(List<dynamic> json) {
    return json == null ? new List<Apiv3customActionscustomActionIdexecuteLinksWorkPackage>() : json.map((value) => new Apiv3customActionscustomActionIdexecuteLinksWorkPackage.fromJson(value)).toList();
  }

  static Map<String, Apiv3customActionscustomActionIdexecuteLinksWorkPackage> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Apiv3customActionscustomActionIdexecuteLinksWorkPackage>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Apiv3customActionscustomActionIdexecuteLinksWorkPackage.fromJson(value));
    }
    return map;
  }
}

