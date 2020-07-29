part of openproject_dart_sdk.api;

class WPTypesEmbedded {
  
  List<WPType> elements = const [];

  WPTypesEmbedded({
    this.elements = const [],
  });

  @override
  String toString() {
    return 'WPTypesEmbedded[elements=$elements, ]';
  }

  WPTypesEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    elements = (json['elements'] == null) ?
      null :
      WPType.listFromJson(json['elements']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (elements != null)
      json['elements'] = elements;
    return json;
  }

  static List<WPTypesEmbedded> listFromJson(List<dynamic> json) {
    return json == null ? List<WPTypesEmbedded>() : json.map((value) => WPTypesEmbedded.fromJson(value)).toList();
  }

  static Map<String, WPTypesEmbedded> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, WPTypesEmbedded>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WPTypesEmbedded.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of WPTypesEmbedded-objects as value to a dart map
  static Map<String, List<WPTypesEmbedded>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<WPTypesEmbedded>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = WPTypesEmbedded.listFromJson(value);
      });
    }
    return map;
  }
}

