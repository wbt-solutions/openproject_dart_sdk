part of openproject_dart_sdk.api;

class Description {
  
  String format = null;
  //enum formatEnum {  plain,  markdown,  custom,  };{
  
  String raw = null;
  
  String html = null;
  Description();

  @override
  String toString() {
    return 'Description[format=$format, raw=$raw, html=$html, ]';
  }

  Description.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    format = json['format'];
    raw = json['raw'];
    html = json['html'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (format != null)
      json['format'] = format;
    if (raw != null)
      json['raw'] = raw;
    if (html != null)
      json['html'] = html;
    return json;
  }

  static List<Description> listFromJson(List<dynamic> json) {
    return json == null ? List<Description>() : json.map((value) => Description.fromJson(value)).toList();
  }

  static Map<String, Description> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Description>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Description.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Description-objects as value to a dart map
  static Map<String, List<Description>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Description>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Description.listFromJson(value);
       });
     }
     return map;
  }
}

