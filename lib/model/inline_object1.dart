part of openproject_dart_sdk.api;

class InlineObject1 {
  
  String lockVersion;
  
  ApiV3CustomActionsCustomActionIdExecuteLinks links;

  InlineObject1({
    this.lockVersion,
    this.links,
  });

  @override
  String toString() {
    return 'InlineObject1[lockVersion=$lockVersion, links=$links, ]';
  }

  InlineObject1.fromJson(Map<String, dynamic> json) {
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

  static List<InlineObject1> listFromJson(List<dynamic> json) {
    return json == null ? List<InlineObject1>() : json.map((value) => InlineObject1.fromJson(value)).toList();
  }

  static Map<String, InlineObject1> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, InlineObject1>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = InlineObject1.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineObject1-objects as value to a dart map
  static Map<String, List<InlineObject1>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<InlineObject1>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = InlineObject1.listFromJson(value);
      });
    }
    return map;
  }
}

