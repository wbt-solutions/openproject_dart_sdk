part of openproject_dart_sdk.api;

class News {
  
  int id;
  
  String title;
  
  String summary;
  
  Description description;
  
  DateTime createdAt;
  
  DateTime updatedAt;
  
  NewsLinks links;
  
  NewsEmbedded embedded;

  News({
    this.id,
    this.title,
    this.summary,
    this.description,
    this.createdAt,
    this.updatedAt,
    this.links,
    this.embedded,
  });

  @override
  String toString() {
    return 'News[id=$id, title=$title, summary=$summary, description=$description, createdAt=$createdAt, updatedAt=$updatedAt, links=$links, embedded=$embedded, ]';
  }

  News.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    title = json['title'];
    summary = json['summary'];
    description = (json['description'] == null) ?
      null :
      Description.fromJson(json['description']);
    createdAt = (json['createdAt'] == null) ?
      null :
      DateTime.parse(json['createdAt']);
    updatedAt = (json['updatedAt'] == null) ?
      null :
      DateTime.parse(json['updatedAt']);
    links = (json['_links'] == null) ?
      null :
      NewsLinks.fromJson(json['_links']);
    embedded = (json['_embedded'] == null) ?
      null :
      NewsEmbedded.fromJson(json['_embedded']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (title != null)
      json['title'] = title;
    if (summary != null)
      json['summary'] = summary;
    if (description != null)
      json['description'] = description;
    if (createdAt != null)
      json['createdAt'] = createdAt == null ? null : createdAt.toUtc().toIso8601String();
    if (updatedAt != null)
      json['updatedAt'] = updatedAt == null ? null : updatedAt.toUtc().toIso8601String();
    if (links != null)
      json['_links'] = links;
    if (embedded != null)
      json['_embedded'] = embedded;
    return json;
  }

  static List<News> listFromJson(List<dynamic> json) {
    return json == null ? List<News>() : json.map((value) => News.fromJson(value)).toList();
  }

  static Map<String, News> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, News>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = News.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of News-objects as value to a dart map
  static Map<String, List<News>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<News>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = News.listFromJson(value);
      });
    }
    return map;
  }
}

