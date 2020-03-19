part of openproject_dart_sdk.api;

class WPType {
  
  int id = null;
  
  String name = null;
  
  String color = null;
  
  int position = null;
  
  bool isDefault = false;
  
  bool isMilestone = false;
  
  DateTime createdAt = null;
  
  DateTime updatedAt = null;
  
  WPTypeLinks links = null;
  WPType();

  @override
  String toString() {
    return 'WPType[id=$id, name=$name, color=$color, position=$position, isDefault=$isDefault, isMilestone=$isMilestone, createdAt=$createdAt, updatedAt=$updatedAt, links=$links, ]';
  }

  WPType.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
    color = json['color'];
    position = json['position'];
    isDefault = json['isDefault'];
    isMilestone = json['isMilestone'];
    createdAt = (json['createdAt'] == null) ?
      null :
      DateTime.parse(json['createdAt']);
    updatedAt = (json['updatedAt'] == null) ?
      null :
      DateTime.parse(json['updatedAt']);
    links = (json['_links'] == null) ?
      null :
      WPTypeLinks.fromJson(json['_links']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (color != null)
      json['color'] = color;
    if (position != null)
      json['position'] = position;
    if (isDefault != null)
      json['isDefault'] = isDefault;
    if (isMilestone != null)
      json['isMilestone'] = isMilestone;
    if (createdAt != null)
      json['createdAt'] = createdAt == null ? null : createdAt.toUtc().toIso8601String();
    if (updatedAt != null)
      json['updatedAt'] = updatedAt == null ? null : updatedAt.toUtc().toIso8601String();
    if (links != null)
      json['_links'] = links;
    return json;
  }

  static List<WPType> listFromJson(List<dynamic> json) {
    return json == null ? List<WPType>() : json.map((value) => WPType.fromJson(value)).toList();
  }

  static Map<String, WPType> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, WPType>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WPType.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of WPType-objects as value to a dart map
  static Map<String, List<WPType>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<WPType>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = WPType.listFromJson(value);
       });
     }
     return map;
  }
}

