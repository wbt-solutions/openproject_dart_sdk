part of openproject_dart_sdk.api;

class StatusesEmbedded {
  
  List<Status> elements = [];
  StatusesEmbedded();

  @override
  String toString() {
    return 'StatusesEmbedded[elements=$elements, ]';
  }

  StatusesEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    elements = (json['elements'] == null) ?
      null :
      Status.listFromJson(json['elements']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (elements != null)
      json['elements'] = elements;
    return json;
  }

  static List<StatusesEmbedded> listFromJson(List<dynamic> json) {
    return json == null ? List<StatusesEmbedded>() : json.map((value) => StatusesEmbedded.fromJson(value)).toList();
  }

  static Map<String, StatusesEmbedded> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, StatusesEmbedded>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = StatusesEmbedded.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of StatusesEmbedded-objects as value to a dart map
  static Map<String, List<StatusesEmbedded>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<StatusesEmbedded>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = StatusesEmbedded.listFromJson(value);
       });
     }
     return map;
  }
}

