part of swagger.api;

class WPType {
  
  int id = null;
  

  String name = null;
  

  String color = null;
  

  int position = null;
  

  bool isDefault = null;
  

  bool isMilestone = null;
  

  DateTime createdAt = null;
  

  DateTime updatedAt = null;
  

  WPType Links links = null;
  
  WPType();

  @override
  String toString() {
    return 'WPType[id=$id, name=$name, color=$color, position=$position, isDefault=$isDefault, isMilestone=$isMilestone, createdAt=$createdAt, updatedAt=$updatedAt, links=$links, ]';
  }

  WPType.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id =
        json['id']
    ;
    name =
        json['name']
    ;
    color =
        json['color']
    ;
    position =
        json['position']
    ;
    isDefault =
        json['isDefault']
    ;
    isMilestone =
        json['isMilestone']
    ;
    createdAt = json['createdAt'] == null ? null : DateTime.parse(json['createdAt']);
    updatedAt = json['updatedAt'] == null ? null : DateTime.parse(json['updatedAt']);
    links =
      
      
      new WPType Links.fromJson(json['_links'])
;
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'color': color,
      'position': position,
      'isDefault': isDefault,
      'isMilestone': isMilestone,
      'createdAt': createdAt == null ? '' : createdAt.toUtc().toIso8601String(),
      'updatedAt': updatedAt == null ? '' : updatedAt.toUtc().toIso8601String(),
      '_links': links
     };
  }

  static List<WPType> listFromJson(List<dynamic> json) {
    return json == null ? new List<WPType>() : json.map((value) => new WPType.fromJson(value)).toList();
  }

  static Map<String, WPType> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WPType>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WPType.fromJson(value));
    }
    return map;
  }
}

