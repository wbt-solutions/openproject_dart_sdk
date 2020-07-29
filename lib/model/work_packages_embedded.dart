part of openproject_dart_sdk.api;

class WorkPackagesEmbedded {

  List<WorkPackage> elements = const [];

  WorkPackagesEmbedded({
    this.elements = const [],
  });

  @override
  String toString() {
    return 'WorkPackagesEmbedded[elements=$elements, ]';
  }

  WorkPackagesEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    elements = (json['elements'] == null) ?
      null :
      WorkPackage.listFromJson(json['elements']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (elements != null)
      json['elements'] = elements;
    return json;
  }

  static List<WorkPackagesEmbedded> listFromJson(List<dynamic> json) {
    return json == null ? List<WorkPackagesEmbedded>() : json.map((value) => WorkPackagesEmbedded.fromJson(value)).toList();
  }

  static Map<String, WorkPackagesEmbedded> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, WorkPackagesEmbedded>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WorkPackagesEmbedded.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of WorkPackagesEmbedded-objects as value to a dart map
  static Map<String, List<WorkPackagesEmbedded>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<WorkPackagesEmbedded>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = WorkPackagesEmbedded.listFromJson(value);
      });
    }
    return map;
  }
}

