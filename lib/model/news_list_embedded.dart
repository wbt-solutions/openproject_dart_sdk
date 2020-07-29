part of openproject_dart_sdk.api;

class NewsListEmbedded {
  
  List<News> elements = const [];

  NewsListEmbedded({
    this.elements = const [],
  });

  @override
  String toString() {
    return 'NewsListEmbedded[elements=$elements, ]';
  }

  NewsListEmbedded.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    elements = (json['elements'] == null) ?
      null :
      News.listFromJson(json['elements']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (elements != null)
      json['elements'] = elements;
    return json;
  }

  static List<NewsListEmbedded> listFromJson(List<dynamic> json) {
    return json == null ? List<NewsListEmbedded>() : json.map((value) => NewsListEmbedded.fromJson(value)).toList();
  }

  static Map<String, NewsListEmbedded> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, NewsListEmbedded>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = NewsListEmbedded.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of NewsListEmbedded-objects as value to a dart map
  static Map<String, List<NewsListEmbedded>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<NewsListEmbedded>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = NewsListEmbedded.listFromJson(value);
      });
    }
    return map;
  }
}

