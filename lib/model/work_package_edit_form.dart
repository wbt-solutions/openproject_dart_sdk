part of swagger.api;

class Work Package Edit Form {
    Work Package Edit Form();

  @override
  String toString() {
    return 'Work Package Edit Form[]';
  }

  Work Package Edit Form.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Work Package Edit Form> listFromJson(List<dynamic> json) {
    return json == null ? new List<Work Package Edit Form>() : json.map((value) => new Work Package Edit Form.fromJson(value)).toList();
  }

  static Map<String, Work Package Edit Form> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Work Package Edit Form>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Work Package Edit Form.fromJson(value));
    }
    return map;
  }
}

