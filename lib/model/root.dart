part of openproject_dart_sdk.api;

class Root {
  
  String instanceName = null;
  
  String coreVersion = null;
  Root();

  @override
  String toString() {
    return 'Root[instanceName=$instanceName, coreVersion=$coreVersion, ]';
  }

  Root.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    instanceName = json['instanceName'];
    coreVersion = json['coreVersion'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (instanceName != null)
      json['instanceName'] = instanceName;
    if (coreVersion != null)
      json['coreVersion'] = coreVersion;
    return json;
  }

  static List<Root> listFromJson(List<dynamic> json) {
    return json == null ? List<Root>() : json.map((value) => Root.fromJson(value)).toList();
  }

  static Map<String, Root> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Root>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Root.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Root-objects as value to a dart map
  static Map<String, List<Root>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Root>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Root.listFromJson(value);
       });
     }
     return map;
  }
}

