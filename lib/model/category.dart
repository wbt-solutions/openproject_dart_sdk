part of openproject_dart_sdk.api;

class Category {
  
  int id;
  
  String name;
  
  CategoryLinks links;

  Category({
    this.id,
    this.name,
    this.links,
  });

  @override
  String toString() {
    return 'Category[id=$id, name=$name, links=$links, ]';
  }

  Category.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
    links = (json['_links'] == null) ?
      null :
      CategoryLinks.fromJson(json['_links']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (links != null)
      json['_links'] = links;
    return json;
  }

  static List<Category> listFromJson(List<dynamic> json) {
    return json == null ? List<Category>() : json.map((value) => Category.fromJson(value)).toList();
  }

  static Map<String, Category> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, Category>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Category.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Category-objects as value to a dart map
  static Map<String, List<Category>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<Category>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = Category.listFromJson(value);
      });
    }
    return map;
  }
}

