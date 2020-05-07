part of openproject_dart_sdk.api;

class NewsListLinks {
  
  Link self = null;
  
  Link jumpTo = null;
  
  Link changeSize = null;
  
  Link nextByOffset = null;
  NewsListLinks();

  @override
  String toString() {
    return 'NewsListLinks[self=$self, jumpTo=$jumpTo, changeSize=$changeSize, nextByOffset=$nextByOffset, ]';
  }

  NewsListLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    self = (json['self'] == null) ?
      null :
      Link.fromJson(json['self']);
    jumpTo = (json['jumpTo'] == null) ?
      null :
      Link.fromJson(json['jumpTo']);
    changeSize = (json['changeSize'] == null) ?
      null :
      Link.fromJson(json['changeSize']);
    nextByOffset = (json['nextByOffset'] == null) ?
      null :
      Link.fromJson(json['nextByOffset']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (self != null)
      json['self'] = self;
    if (jumpTo != null)
      json['jumpTo'] = jumpTo;
    if (changeSize != null)
      json['changeSize'] = changeSize;
    if (nextByOffset != null)
      json['nextByOffset'] = nextByOffset;
    return json;
  }

  static List<NewsListLinks> listFromJson(List<dynamic> json) {
    return json == null ? List<NewsListLinks>() : json.map((value) => NewsListLinks.fromJson(value)).toList();
  }

  static Map<String, NewsListLinks> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, NewsListLinks>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = NewsListLinks.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of NewsListLinks-objects as value to a dart map
  static Map<String, List<NewsListLinks>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<NewsListLinks>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = NewsListLinks.listFromJson(value);
       });
     }
     return map;
  }
}

