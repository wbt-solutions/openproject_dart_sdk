part of swagger.api;

class Query Create Form {
    Query Create Form();

  @override
  String toString() {
    return 'Query Create Form[]';
  }

  Query Create Form.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Query Create Form> listFromJson(List<dynamic> json) {
    return json == null ? new List<Query Create Form>() : json.map((value) => new Query Create Form.fromJson(value)).toList();
  }

  static Map<String, Query Create Form> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Query Create Form>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Query Create Form.fromJson(value));
    }
    return map;
  }
}

