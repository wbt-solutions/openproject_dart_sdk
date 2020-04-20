part of openproject_dart_sdk.api;

class Categories {
  
  int total = null;
  
  int count = null;
  
  CategoriesEmbedded embedded = null;
  Categories();

  @override
  String toString() {
    return 'Categories[total=$total, count=$count, embedded=$embedded, ]';
  }

  Categories.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    total = json['total'];
    count = json['count'];
    embedded = (json['_embedded'] == null) ?
      null :
      CategoriesEmbedded.fromJson(json['_embedded']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (total != null)
      json['total'] = total;
    if (count != null)
      json['count'] = count;
    if (embedded != null)
      json['_embedded'] = embedded;
    return json;
  }

  static List<Categories> listFromJson(List<dynamic> json) {
    return json == null ? List<Categories>() : json.map((value) => Categories.fromJson(value)).toList();
  }

  static Map<String, Categories> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Categories>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Categories.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Categories-objects as value to a dart map
  static Map<String, List<Categories>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Categories>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Categories.listFromJson(value);
       });
     }
     return map;
  }
}

