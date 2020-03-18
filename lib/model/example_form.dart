part of swagger.api;

class Example Form {
    Example Form();

  @override
  String toString() {
    return 'Example Form[]';
  }

  Example Form.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Example Form> listFromJson(List<dynamic> json) {
    return json == null ? new List<Example Form>() : json.map((value) => new Example Form.fromJson(value)).toList();
  }

  static Map<String, Example Form> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Example Form>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Example Form.fromJson(value));
    }
    return map;
  }
}

