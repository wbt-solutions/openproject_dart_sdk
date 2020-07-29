part of openproject_dart_sdk.api;

class InlineObject8 {
  
  ApiV3ActivitiesIdComment comment;

  InlineObject8({
    this.comment,
  });

  @override
  String toString() {
    return 'InlineObject8[comment=$comment, ]';
  }

  InlineObject8.fromJson(Map<String, dynamic> json) {
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

  static List<InlineObject8> listFromJson(List<dynamic> json) {
    return json == null ? List<InlineObject8>() : json.map((value) => InlineObject8.fromJson(value)).toList();
  }

  static Map<String, InlineObject8> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, InlineObject8>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = InlineObject8.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineObject8-objects as value to a dart map
  static Map<String, List<InlineObject8>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<InlineObject8>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = InlineObject8.listFromJson(value);
      });
    }
    return map;
  }
}

