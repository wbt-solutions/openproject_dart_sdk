part of openproject_dart_sdk.api;

class PrioritiesEmbedded {
  
  List<Priority> elements = const [];

  PrioritiesEmbedded({
    this.elements = const [],
  });

  @override
  String toString() {
    return 'PrioritiesEmbedded[elements=$elements, ]';
  }

  PrioritiesEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    elements = (json['elements'] == null) ?
      null :
      Priority.listFromJson(json['elements']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (elements != null)
      json['elements'] = elements;
    return json;
  }

  static List<PrioritiesEmbedded> listFromJson(List<dynamic> json) {
    return json == null ? List<PrioritiesEmbedded>() : json.map((value) => PrioritiesEmbedded.fromJson(value)).toList();
  }

  static Map<String, PrioritiesEmbedded> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, PrioritiesEmbedded>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = PrioritiesEmbedded.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of PrioritiesEmbedded-objects as value to a dart map
  static Map<String, List<PrioritiesEmbedded>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<PrioritiesEmbedded>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = PrioritiesEmbedded.listFromJson(value);
      });
    }
    return map;
  }
}

