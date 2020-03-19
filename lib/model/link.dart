part of openproject_dart_sdk.api;

class Link {
  
  String href = null;
  
  String title = null;
  
  String method = null;
  //enum methodEnum {  patch,  post,  get,  };{
  
  String type = null;
  Link();

  @override
  String toString() {
    return 'Link[href=$href, title=$title, method=$method, type=$type, ]';
  }

  Link.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    href = json['href'];
    title = json['title'];
    method = json['method'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (href != null)
      json['href'] = href;
    if (title != null)
      json['title'] = title;
    if (method != null)
      json['method'] = method;
    if (type != null)
      json['type'] = type;
    return json;
  }

  static List<Link> listFromJson(List<dynamic> json) {
    return json == null ? List<Link>() : json.map((value) => Link.fromJson(value)).toList();
  }

  static Map<String, Link> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Link>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Link.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Link-objects as value to a dart map
  static Map<String, List<Link>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Link>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Link.listFromJson(value);
       });
     }
     return map;
  }
}

