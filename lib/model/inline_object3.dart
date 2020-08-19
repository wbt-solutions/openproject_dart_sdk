part of openproject_dart_sdk.api;

class InlineObject3 {
  
  bool accessibilityMode;
  
  String timeZone;

  InlineObject3({
    this.accessibilityMode,
    this.timeZone,
  });

  @override
  String toString() {
    return 'InlineObject3[accessibilityMode=$accessibilityMode, timeZone=$timeZone, ]';
  }

  InlineObject3.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    accessibilityMode = json['accessibilityMode'];
    timeZone = json['timeZone'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (accessibilityMode != null)
      json['accessibilityMode'] = accessibilityMode;
    if (timeZone != null)
      json['timeZone'] = timeZone;
    return json;
  }

  static List<InlineObject3> listFromJson(List<dynamic> json) {
    return json == null ? List<InlineObject3>() : json.map((value) => InlineObject3.fromJson(value)).toList();
  }

  static Map<String, InlineObject3> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, InlineObject3>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = InlineObject3.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineObject3-objects as value to a dart map
  static Map<String, List<InlineObject3>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<InlineObject3>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = InlineObject3.listFromJson(value);
      });
    }
    return map;
  }
}

