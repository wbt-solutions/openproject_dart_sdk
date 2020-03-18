part of openapi.api;

class InlineObject7 {
  
  ApiV3CustomActionsCustomActionIdExecuteLinksWorkPackage user = null;
  InlineObject7();

  @override
  String toString() {
    return 'InlineObject7[user=$user, ]';
  }

  InlineObject7.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    user = (json['user'] == null) ?
      null :
      ApiV3CustomActionsCustomActionIdExecuteLinksWorkPackage.fromJson(json['user']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (user != null)
      json['user'] = user;
    return json;
  }

  static List<InlineObject7> listFromJson(List<dynamic> json) {
    return json == null ? List<InlineObject7>() : json.map((value) => InlineObject7.fromJson(value)).toList();
  }

  static Map<String, InlineObject7> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, InlineObject7>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = InlineObject7.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineObject7-objects as value to a dart map
  static Map<String, List<InlineObject7>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<InlineObject7>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = InlineObject7.listFromJson(value);
       });
     }
     return map;
  }
}

