part of swagger.api;

class WPTypesEmbedded {
  
  List<WPType> elements = [];
  
  WPTypesEmbedded();

  @override
  String toString() {
    return 'WPTypesEmbedded[elements=$elements, ]';
  }

  WPTypesEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    elements =
      WPType.listFromJson(json['elements'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'elements': elements
     };
  }

  static List<WPTypesEmbedded> listFromJson(List<dynamic> json) {
    return json == null ? new List<WPTypesEmbedded>() : json.map((value) => new WPTypesEmbedded.fromJson(value)).toList();
  }

  static Map<String, WPTypesEmbedded> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WPTypesEmbedded>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WPTypesEmbedded.fromJson(value));
    }
    return map;
  }
}

