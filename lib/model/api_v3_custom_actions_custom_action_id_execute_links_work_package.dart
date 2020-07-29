part of openproject_dart_sdk.api;

class ApiV3CustomActionsCustomActionIdExecuteLinksWorkPackage {
  
  String href;

  ApiV3CustomActionsCustomActionIdExecuteLinksWorkPackage({
    this.href,
  });

  @override
  String toString() {
    return 'ApiV3CustomActionsCustomActionIdExecuteLinksWorkPackage[href=$href, ]';
  }

  ApiV3CustomActionsCustomActionIdExecuteLinksWorkPackage.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (href != null)
      json['href'] = href;
    return json;
  }

  static List<ApiV3CustomActionsCustomActionIdExecuteLinksWorkPackage> listFromJson(List<dynamic> json) {
    return json == null ? List<ApiV3CustomActionsCustomActionIdExecuteLinksWorkPackage>() : json.map((value) => ApiV3CustomActionsCustomActionIdExecuteLinksWorkPackage.fromJson(value)).toList();
  }

  static Map<String, ApiV3CustomActionsCustomActionIdExecuteLinksWorkPackage> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, ApiV3CustomActionsCustomActionIdExecuteLinksWorkPackage>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ApiV3CustomActionsCustomActionIdExecuteLinksWorkPackage.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ApiV3CustomActionsCustomActionIdExecuteLinksWorkPackage-objects as value to a dart map
  static Map<String, List<ApiV3CustomActionsCustomActionIdExecuteLinksWorkPackage>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<ApiV3CustomActionsCustomActionIdExecuteLinksWorkPackage>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = ApiV3CustomActionsCustomActionIdExecuteLinksWorkPackage.listFromJson(value);
      });
    }
    return map;
  }
}

