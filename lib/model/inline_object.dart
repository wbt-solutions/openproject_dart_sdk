part of openproject_dart_sdk.api;

class InlineObject {
  
  String lockVersion;
  
  ApiV3CustomActionsCustomActionIdExecuteLinks links;

  InlineObject({
    this.lockVersion,
    this.links,
  });

  @override
  String toString() {
    return 'InlineObject[lockVersion=$lockVersion, links=$links, ]';
  }

  InlineObject.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    lockVersion = json['lockVersion'];
    links = (json['_links'] == null) ?
      null :
      ApiV3CustomActionsCustomActionIdExecuteLinks.fromJson(json['_links']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (lockVersion != null)
      json['lockVersion'] = lockVersion;
    if (links != null)
      json['_links'] = links;
    return json;
  }

  static List<InlineObject> listFromJson(List<dynamic> json) {
    return json == null ? List<InlineObject>() : json.map((value) => InlineObject.fromJson(value)).toList();
  }

  static Map<String, InlineObject> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, InlineObject>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = InlineObject.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineObject-objects as value to a dart map
  static Map<String, List<InlineObject>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<InlineObject>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = InlineObject.listFromJson(value);
      });
    }
    return map;
  }
}

