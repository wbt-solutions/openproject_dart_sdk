part of openproject_dart_sdk.api;

class ApiV3ActivitiesIdComment {
  
  String raw = null;
  ApiV3ActivitiesIdComment();

  @override
  String toString() {
    return 'ApiV3ActivitiesIdComment[raw=$raw, ]';
  }

  ApiV3ActivitiesIdComment.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    raw = json['raw'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (raw != null)
      json['raw'] = raw;
    return json;
  }

  static List<ApiV3ActivitiesIdComment> listFromJson(List<dynamic> json) {
    return json == null ? List<ApiV3ActivitiesIdComment>() : json.map((value) => ApiV3ActivitiesIdComment.fromJson(value)).toList();
  }

  static Map<String, ApiV3ActivitiesIdComment> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, ApiV3ActivitiesIdComment>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = ApiV3ActivitiesIdComment.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ApiV3ActivitiesIdComment-objects as value to a dart map
  static Map<String, List<ApiV3ActivitiesIdComment>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<ApiV3ActivitiesIdComment>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = ApiV3ActivitiesIdComment.listFromJson(value);
       });
     }
     return map;
  }
}

