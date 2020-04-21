part of openproject_dart_sdk.api;

class Priority {
  
  int id = null;
  
  String name = null;
  
  int position = null;
  
  bool isDefault = null;
  
  bool isActive = null;
  
  PriorityLinks links = null;
  Priority();

  @override
  String toString() {
    return 'Priority[id=$id, name=$name, position=$position, isDefault=$isDefault, isActive=$isActive, links=$links, ]';
  }

  Priority.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
    position = json['position'];
    isDefault = json['isDefault'];
    isActive = json['isActive'];
    links = (json['links'] == null) ?
      null :
      PriorityLinks.fromJson(json['links']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (position != null)
      json['position'] = position;
    if (isDefault != null)
      json['isDefault'] = isDefault;
    if (isActive != null)
      json['isActive'] = isActive;
    if (links != null)
      json['links'] = links;
    return json;
  }

  static List<Priority> listFromJson(List<dynamic> json) {
    return json == null ? List<Priority>() : json.map((value) => Priority.fromJson(value)).toList();
  }

  static Map<String, Priority> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Priority>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Priority.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Priority-objects as value to a dart map
  static Map<String, List<Priority>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Priority>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Priority.listFromJson(value);
       });
     }
     return map;
  }
}

