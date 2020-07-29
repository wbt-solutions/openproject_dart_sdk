part of openproject_dart_sdk.api;

class ApiV3CustomActionsCustomActionIdExecuteLinks {
  
  ApiV3CustomActionsCustomActionIdExecuteLinksWorkPackage workPackage;

  ApiV3CustomActionsCustomActionIdExecuteLinks({
    this.workPackage,
  });

  @override
  String toString() {
    return 'ApiV3CustomActionsCustomActionIdExecuteLinks[workPackage=$workPackage, ]';
  }

  ApiV3CustomActionsCustomActionIdExecuteLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    workPackage = (json['workPackage'] == null) ?
      null :
      ApiV3CustomActionsCustomActionIdExecuteLinksWorkPackage.fromJson(json['workPackage']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (workPackage != null)
      json['workPackage'] = workPackage;
    return json;
  }

  static List<ApiV3CustomActionsCustomActionIdExecuteLinks> listFromJson(List<dynamic> json) {
    return json == null ? List<ApiV3CustomActionsCustomActionIdExecuteLinks>() : json.map((value) => ApiV3CustomActionsCustomActionIdExecuteLinks.fromJson(value)).toList();
  }

  static Map<String, ApiV3CustomActionsCustomActionIdExecuteLinks> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, ApiV3CustomActionsCustomActionIdExecuteLinks>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ApiV3CustomActionsCustomActionIdExecuteLinks.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ApiV3CustomActionsCustomActionIdExecuteLinks-objects as value to a dart map
  static Map<String, List<ApiV3CustomActionsCustomActionIdExecuteLinks>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<ApiV3CustomActionsCustomActionIdExecuteLinks>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = ApiV3CustomActionsCustomActionIdExecuteLinks.listFromJson(value);
      });
    }
    return map;
  }
}

