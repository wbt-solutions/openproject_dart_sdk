part of openproject_dart_sdk.api;

class InlineObject2 {
  
  num lockVersion;
  
  String type;
  
  String subject;

  InlineObject2({
    this.lockVersion,
    this.type,
    this.subject,
  });

  @override
  String toString() {
    return 'InlineObject2[lockVersion=$lockVersion, type=$type, subject=$subject, ]';
  }

  InlineObject2.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    lockVersion = json['lockVersion'];
    type = json['_type'];
    subject = json['subject'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (lockVersion != null)
      json['lockVersion'] = lockVersion;
    if (type != null)
      json['_type'] = type;
    if (subject != null)
      json['subject'] = subject;
    return json;
  }

  static List<InlineObject2> listFromJson(List<dynamic> json) {
    return json == null ? List<InlineObject2>() : json.map((value) => InlineObject2.fromJson(value)).toList();
  }

  static Map<String, InlineObject2> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, InlineObject2>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = InlineObject2.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineObject2-objects as value to a dart map
  static Map<String, List<InlineObject2>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<InlineObject2>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = InlineObject2.listFromJson(value);
      });
    }
    return map;
  }
}

