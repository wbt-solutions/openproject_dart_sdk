part of openproject_dart_sdk.api;

class Status {
  
  int id;
  
  String name;
  
  int position;
  
  bool isDefault;
  
  bool isClosed;
  
  bool isReadonly;
  
  int defaultDoneRatio;
  
  StatusLinks links;

  Status({
    this.id,
    this.name,
    this.position,
    this.isDefault,
    this.isClosed,
    this.isReadonly,
    this.defaultDoneRatio,
    this.links,
  });

  @override
  String toString() {
    return 'Status[id=$id, name=$name, position=$position, isDefault=$isDefault, isClosed=$isClosed, isReadonly=$isReadonly, defaultDoneRatio=$defaultDoneRatio, links=$links, ]';
  }

  Status.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
    position = json['position'];
    isDefault = json['isDefault'];
    isClosed = json['isClosed'];
    isReadonly = json['isReadonly'];
    defaultDoneRatio = json['defaultDoneRatio'];
    links = (json['_links'] == null) ?
      null :
      StatusLinks.fromJson(json['_links']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (position != null)
      json['position'] = position;
    if (isDefault != null)
      json['isDefault'] = isDefault;
    if (isClosed != null)
      json['isClosed'] = isClosed;
    if (isReadonly != null)
      json['isReadonly'] = isReadonly;
    if (defaultDoneRatio != null)
      json['defaultDoneRatio'] = defaultDoneRatio;
    if (links != null)
      json['_links'] = links;
    return json;
  }

  static List<Status> listFromJson(List<dynamic> json) {
    return json == null ? List<Status>() : json.map((value) => Status.fromJson(value)).toList();
  }

  static Map<String, Status> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, Status>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Status.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Status-objects as value to a dart map
  static Map<String, List<Status>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<Status>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = Status.listFromJson(value);
      });
    }
    return map;
  }
}

