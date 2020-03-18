part of swagger.api;

class Default Query {
    Default Query();

  @override
  String toString() {
    return 'Default Query[]';
  }

  Default Query.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Default Query> listFromJson(List<dynamic> json) {
    return json == null ? new List<Default Query>() : json.map((value) => new Default Query.fromJson(value)).toList();
  }

  static Map<String, Default Query> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Default Query>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Default Query.fromJson(value));
    }
    return map;
  }
}

