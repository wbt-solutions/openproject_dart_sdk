part of openproject_dart_sdk.api;

class NewsList {
  
  int total = null;
  
  int count = null;
  
  int pageSize = null;
  
  int offset = null;
  
  NewsListEmbedded embedded = null;
  
  NewsListLinks links = null;
  NewsList();

  @override
  String toString() {
    return 'NewsList[total=$total, count=$count, pageSize=$pageSize, offset=$offset, embedded=$embedded, links=$links, ]';
  }

  NewsList.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    total = json['total'];
    count = json['count'];
    pageSize = json['pageSize'];
    offset = json['offset'];
    embedded = (json['_embedded'] == null) ?
      null :
      NewsListEmbedded.fromJson(json['_embedded']);
    links = (json['_links'] == null) ?
      null :
      NewsListLinks.fromJson(json['_links']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (total != null)
      json['total'] = total;
    if (count != null)
      json['count'] = count;
    if (pageSize != null)
      json['pageSize'] = pageSize;
    if (offset != null)
      json['offset'] = offset;
    if (embedded != null)
      json['_embedded'] = embedded;
    if (links != null)
      json['_links'] = links;
    return json;
  }

  static List<NewsList> listFromJson(List<dynamic> json) {
    return json == null ? List<NewsList>() : json.map((value) => NewsList.fromJson(value)).toList();
  }

  static Map<String, NewsList> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, NewsList>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = NewsList.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of NewsList-objects as value to a dart map
  static Map<String, List<NewsList>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<NewsList>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = NewsList.listFromJson(value);
       });
     }
     return map;
  }
}

