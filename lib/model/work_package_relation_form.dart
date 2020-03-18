part of swagger.api;

class Work Package Relation Form {
    Work Package Relation Form();

  @override
  String toString() {
    return 'Work Package Relation Form[]';
  }

  Work Package Relation Form.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Work Package Relation Form> listFromJson(List<dynamic> json) {
    return json == null ? new List<Work Package Relation Form>() : json.map((value) => new Work Package Relation Form.fromJson(value)).toList();
  }

  static Map<String, Work Package Relation Form> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Work Package Relation Form>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Work Package Relation Form.fromJson(value));
    }
    return map;
  }
}

