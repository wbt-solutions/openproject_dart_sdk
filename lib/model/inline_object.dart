part of openproject_dart_sdk.api;

class InlineObject {
  
  ApiV3ActivitiesIdComment comment;

  InlineObject({
    this.comment,
  });

  @override
  String toString() {
    return 'InlineObject[comment=$comment, ]';
  }

  InlineObject.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    comment = (json['comment'] == null) ?
      null :
      ApiV3ActivitiesIdComment.fromJson(json['comment']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (comment != null)
      json['comment'] = comment;
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

