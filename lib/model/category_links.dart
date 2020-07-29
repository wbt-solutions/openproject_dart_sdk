part of openproject_dart_sdk.api;

class CategoryLinks {
  
  Link self;
  
  Link project;
  
  Link defaultAssignee;

  CategoryLinks({
    this.self,
    this.project,
    this.defaultAssignee,
  });

  @override
  String toString() {
    return 'CategoryLinks[self=$self, project=$project, defaultAssignee=$defaultAssignee, ]';
  }

  CategoryLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    self = (json['self'] == null) ?
      null :
      Link.fromJson(json['self']);
    project = (json['project'] == null) ?
      null :
      Link.fromJson(json['project']);
    defaultAssignee = (json['defaultAssignee'] == null) ?
      null :
      Link.fromJson(json['defaultAssignee']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (self != null)
      json['self'] = self;
    if (project != null)
      json['project'] = project;
    if (defaultAssignee != null)
      json['defaultAssignee'] = defaultAssignee;
    return json;
  }

  static List<CategoryLinks> listFromJson(List<dynamic> json) {
    return json == null ? List<CategoryLinks>() : json.map((value) => CategoryLinks.fromJson(value)).toList();
  }

  static Map<String, CategoryLinks> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, CategoryLinks>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CategoryLinks.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CategoryLinks-objects as value to a dart map
  static Map<String, List<CategoryLinks>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<CategoryLinks>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = CategoryLinks.listFromJson(value);
      });
    }
    return map;
  }
}

