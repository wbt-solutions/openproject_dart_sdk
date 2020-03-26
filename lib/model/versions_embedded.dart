part of openproject_dart_sdk.api;

class VersionsEmbedded {
  
  List<Version> elements = [];
  VersionsEmbedded();

  @override
  String toString() {
    return 'VersionsEmbedded[elements=$elements, ]';
  }

  VersionsEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    elements = (json['elements'] == null) ?
      null :
      Version.listFromJson(json['elements']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (elements != null)
      json['elements'] = elements;
    return json;
  }

  static List<VersionsEmbedded> listFromJson(List<dynamic> json) {
    return json == null ? List<VersionsEmbedded>() : json.map((value) => VersionsEmbedded.fromJson(value)).toList();
  }

  static Map<String, VersionsEmbedded> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, VersionsEmbedded>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = VersionsEmbedded.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of VersionsEmbedded-objects as value to a dart map
  static Map<String, List<VersionsEmbedded>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<VersionsEmbedded>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = VersionsEmbedded.listFromJson(value);
       });
     }
     return map;
  }
}

