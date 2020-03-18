part of swagger.api;

class Description {
  
  String format = null;
  //enum formatEnum {  textile,  };

  String raw = null;
  

  String html = null;
  
  Description();

  @override
  String toString() {
    return 'Description[format=$format, raw=$raw, html=$html, ]';
  }

  Description.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    format =
        json['format']
    ;
    raw =
        json['raw']
    ;
    html =
        json['html']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'format': format,
      'raw': raw,
      'html': html
     };
  }

  static List<Description> listFromJson(List<dynamic> json) {
    return json == null ? new List<Description>() : json.map((value) => new Description.fromJson(value)).toList();
  }

  static Map<String, Description> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Description>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Description.fromJson(value));
    }
    return map;
  }
}

