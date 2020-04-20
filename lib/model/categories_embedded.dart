part of openproject_dart_sdk.api;

class CategoriesEmbedded {
  
  List<Category> elements = [];
  CategoriesEmbedded();

  @override
  String toString() {
    return 'CategoriesEmbedded[elements=$elements, ]';
  }

  CategoriesEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    elements = (json['elements'] == null) ?
      null :
      Category.listFromJson(json['elements']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (elements != null)
      json['elements'] = elements;
    return json;
  }

  static List<CategoriesEmbedded> listFromJson(List<dynamic> json) {
    return json == null ? List<CategoriesEmbedded>() : json.map((value) => CategoriesEmbedded.fromJson(value)).toList();
  }

  static Map<String, CategoriesEmbedded> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, CategoriesEmbedded>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = CategoriesEmbedded.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CategoriesEmbedded-objects as value to a dart map
  static Map<String, List<CategoriesEmbedded>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<CategoriesEmbedded>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = CategoriesEmbedded.listFromJson(value);
       });
     }
     return map;
  }
}

