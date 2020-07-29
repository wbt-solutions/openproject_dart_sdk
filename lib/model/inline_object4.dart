part of openproject_dart_sdk.api;

class InlineObject4 {
  
  bool accessibilityMode;
  
  String timeZone;

  InlineObject4({
    this.accessibilityMode,
    this.timeZone,
  });

  @override
  String toString() {
    return 'InlineObject4[accessibilityMode=$accessibilityMode, timeZone=$timeZone, ]';
  }

  InlineObject4.fromJson(Map<String, dynamic> json) {
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

  static List<InlineObject4> listFromJson(List<dynamic> json) {
    return json == null ? List<InlineObject4>() : json.map((value) => InlineObject4.fromJson(value)).toList();
  }

  static Map<String, InlineObject4> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, InlineObject4>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = InlineObject4.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineObject4-objects as value to a dart map
  static Map<String, List<InlineObject4>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<InlineObject4>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = InlineObject4.listFromJson(value);
      });
    }
    return map;
  }
}

