part of openproject_dart_sdk.api;

class TimeEntry {
  
  int id;
  
  String hours;
  
  Description comment;
  
  DateTime spentOn;
  
  DateTime createdAt;
  
  DateTime updatedAt;
  
  TimeEntryEmbedded embedded;
  
  TimeEntryLinks links;

  TimeEntry({
    this.id,
    this.hours,
    this.comment,
    this.spentOn,
    this.createdAt,
    this.updatedAt,
    this.embedded,
    this.links,
  });

  @override
  String toString() {
    return 'TimeEntry[id=$id, hours=$hours, comment=$comment, spentOn=$spentOn, createdAt=$createdAt, updatedAt=$updatedAt, embedded=$embedded, links=$links, ]';
  }

  TimeEntry.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    hours = json['hours'];
    comment = (json['comment'] == null) ?
      null :
      Description.fromJson(json['comment']);
    spentOn = (json['spentOn'] == null) ?
      null :
      DateTime.parse(json['spentOn']);
    createdAt = (json['createdAt'] == null) ?
      null :
      DateTime.parse(json['createdAt']);
    updatedAt = (json['updatedAt'] == null) ?
      null :
      DateTime.parse(json['updatedAt']);
    embedded = (json['_embedded'] == null) ?
      null :
      TimeEntryEmbedded.fromJson(json['_embedded']);
    links = (json['_links'] == null) ?
      null :
      TimeEntryLinks.fromJson(json['_links']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (hours != null)
      json['hours'] = hours;
    if (comment != null)
      json['comment'] = comment;
    if (spentOn != null)
      json['spentOn'] = spentOn == null ? null : _dateFormatter.format(spentOn.toUtc());
    if (createdAt != null)
      json['createdAt'] = createdAt == null ? null : createdAt.toUtc().toIso8601String();
    if (updatedAt != null)
      json['updatedAt'] = updatedAt == null ? null : updatedAt.toUtc().toIso8601String();
    if (embedded != null)
      json['_embedded'] = embedded;
    if (links != null)
      json['_links'] = links;
    return json;
  }

  static List<TimeEntry> listFromJson(List<dynamic> json) {
    return json == null ? List<TimeEntry>() : json.map((value) => TimeEntry.fromJson(value)).toList();
  }

  static Map<String, TimeEntry> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, TimeEntry>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = TimeEntry.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TimeEntry-objects as value to a dart map
  static Map<String, List<TimeEntry>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<TimeEntry>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = TimeEntry.listFromJson(value);
      });
    }
    return map;
  }
}

