part of swagger.api;

class Attachment {
    Attachment();

  @override
  String toString() {
    return 'Attachment[]';
  }

  Attachment.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Attachment> listFromJson(List<dynamic> json) {
    return json == null ? new List<Attachment>() : json.map((value) => new Attachment.fromJson(value)).toList();
  }

  static Map<String, Attachment> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Attachment>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Attachment.fromJson(value));
    }
    return map;
  }
}

