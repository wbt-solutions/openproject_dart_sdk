part of swagger.api;

class Link {
  
  String href = null;
  

  String title = null;
  

  String method = null;
  //enum methodEnum {  patch,  post,  get,  };

  String type = null;
  
  Link();

  @override
  String toString() {
    return 'Link[href=$href, title=$title, method=$method, type=$type, ]';
  }

  Link.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    href =
        json['href']
    ;
    title =
        json['title']
    ;
    method =
        json['method']
    ;
    type =
        json['type']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'href': href,
      'title': title,
      'method': method,
      'type': type
     };
  }

  static List<Link> listFromJson(List<dynamic> json) {
    return json == null ? new List<Link>() : json.map((value) => new Link.fromJson(value)).toList();
  }

  static Map<String, Link> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Link>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Link.fromJson(value));
    }
    return map;
  }
}

