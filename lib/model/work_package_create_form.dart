part of swagger.api;

class Work Package Create Form {
    Work Package Create Form();

  @override
  String toString() {
    return 'Work Package Create Form[]';
  }

  Work Package Create Form.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Work Package Create Form> listFromJson(List<dynamic> json) {
    return json == null ? new List<Work Package Create Form>() : json.map((value) => new Work Package Create Form.fromJson(value)).toList();
  }

  static Map<String, Work Package Create Form> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Work Package Create Form>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Work Package Create Form.fromJson(value));
    }
    return map;
  }
}

