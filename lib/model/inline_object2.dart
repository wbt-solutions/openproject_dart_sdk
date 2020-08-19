part of openproject_dart_sdk.api;

class InlineObject2 {
  
  String name;

  InlineObject2({
    this.name,
  });

  @override
  String toString() {
    return 'InlineObject2[name=$name, ]';
  }

  InlineObject2.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (name != null)
      json['name'] = name;
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

