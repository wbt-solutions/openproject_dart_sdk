part of openproject_dart_sdk.api;

class InlineObject6 {
  
  ApiV3CustomActionsCustomActionIdExecuteLinksWorkPackage user;

  InlineObject6({
    this.user,
  });

  @override
  String toString() {
    return 'InlineObject6[user=$user, ]';
  }

  InlineObject6.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    user = (json['user'] == null) ?
      null :
      ApiV3CustomActionsCustomActionIdExecuteLinksWorkPackage.fromJson(json['user']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (user != null)
      json['user'] = user;
    return json;
  }

  static List<InlineObject6> listFromJson(List<dynamic> json) {
    return json == null ? List<InlineObject6>() : json.map((value) => InlineObject6.fromJson(value)).toList();
  }

  static Map<String, InlineObject6> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, InlineObject6>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = InlineObject6.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineObject6-objects as value to a dart map
  static Map<String, List<InlineObject6>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<InlineObject6>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = InlineObject6.listFromJson(value);
      });
    }
    return map;
  }
}

