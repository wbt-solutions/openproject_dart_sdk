part of openproject_dart_sdk.api;

class TimeEntriesActivity {
  
  int id;
  
  String name;
  
  int position;
  
  bool default_;
  
  TimeEntriesActivityEmbedded embedded;
  
  TimeEntriesActivityLinks links;

  TimeEntriesActivity({
    this.id,
    this.name,
    this.position,
    this.default_,
    this.embedded,
    this.links,
  });

  @override
  String toString() {
    return 'TimeEntriesActivity[id=$id, name=$name, position=$position, default_=$default_, embedded=$embedded, links=$links, ]';
  }

  TimeEntriesActivity.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    name = json['name'];
    position = json['position'];
    default_ = json['default'];
    embedded = (json['_embedded'] == null) ?
      null :
      TimeEntriesActivityEmbedded.fromJson(json['_embedded']);
    links = (json['_links'] == null) ?
      null :
      TimeEntriesActivityLinks.fromJson(json['_links']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (name != null)
      json['name'] = name;
    if (position != null)
      json['position'] = position;
    if (default_ != null)
      json['default'] = default_;
    if (embedded != null)
      json['_embedded'] = embedded;
    if (links != null)
      json['_links'] = links;
    return json;
  }

  static List<TimeEntriesActivity> listFromJson(List<dynamic> json) {
    return json == null ? List<TimeEntriesActivity>() : json.map((value) => TimeEntriesActivity.fromJson(value)).toList();
  }

  static Map<String, TimeEntriesActivity> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, TimeEntriesActivity>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TimeEntriesActivity.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TimeEntriesActivity-objects as value to a dart map
  static Map<String, List<TimeEntriesActivity>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<TimeEntriesActivity>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = TimeEntriesActivity.listFromJson(value);
      });
    }
    return map;
  }
}

