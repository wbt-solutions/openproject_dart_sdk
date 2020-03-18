part of swagger.api;

class Relation edit form {
    Relation edit form();

  @override
  String toString() {
    return 'Relation edit form[]';
  }

  Relation edit form.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Relation edit form> listFromJson(List<dynamic> json) {
    return json == null ? new List<Relation edit form>() : json.map((value) => new Relation edit form.fromJson(value)).toList();
  }

  static Map<String, Relation edit form> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Relation edit form>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Relation edit form.fromJson(value));
    }
    return map;
  }
}

