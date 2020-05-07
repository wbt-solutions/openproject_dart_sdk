part of openproject_dart_sdk.api;

class NewsEmbedded {
  
  Project project = null;
  
  User author = null;
  NewsEmbedded();

  @override
  String toString() {
    return 'NewsEmbedded[project=$project, author=$author, ]';
  }

  NewsEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    project = (json['project'] == null) ?
      null :
      Project.fromJson(json['project']);
    author = (json['author'] == null) ?
      null :
      User.fromJson(json['author']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (project != null)
      json['project'] = project;
    if (author != null)
      json['author'] = author;
    return json;
  }

  static List<NewsEmbedded> listFromJson(List<dynamic> json) {
    return json == null ? List<NewsEmbedded>() : json.map((value) => NewsEmbedded.fromJson(value)).toList();
  }

  static Map<String, NewsEmbedded> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, NewsEmbedded>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = NewsEmbedded.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of NewsEmbedded-objects as value to a dart map
  static Map<String, List<NewsEmbedded>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<NewsEmbedded>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = NewsEmbedded.listFromJson(value);
       });
     }
     return map;
  }
}

