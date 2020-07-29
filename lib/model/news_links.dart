part of openproject_dart_sdk.api;

class NewsLinks {
  
  Link self;
  
  Link project;
  
  Link author;

  NewsLinks({
    this.self,
    this.project,
    this.author,
  });

  @override
  String toString() {
    return 'NewsLinks[self=$self, project=$project, author=$author, ]';
  }

  NewsLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    self = (json['self'] == null) ?
      null :
      Link.fromJson(json['self']);
    project = (json['project'] == null) ?
      null :
      Link.fromJson(json['project']);
    author = (json['author'] == null) ?
      null :
      Link.fromJson(json['author']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (self != null)
      json['self'] = self;
    if (project != null)
      json['project'] = project;
    if (author != null)
      json['author'] = author;
    return json;
  }

  static List<NewsLinks> listFromJson(List<dynamic> json) {
    return json == null ? List<NewsLinks>() : json.map((value) => NewsLinks.fromJson(value)).toList();
  }

  static Map<String, NewsLinks> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, NewsLinks>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = NewsLinks.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of NewsLinks-objects as value to a dart map
  static Map<String, List<NewsLinks>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<NewsLinks>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = NewsLinks.listFromJson(value);
      });
    }
    return map;
  }
}

