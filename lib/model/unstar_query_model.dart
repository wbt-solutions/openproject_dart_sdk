part of swagger.api;

class Unstar QueryModel {
    Unstar QueryModel();

  @override
  String toString() {
    return 'Unstar QueryModel[]';
  }

  Unstar QueryModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Unstar QueryModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<Unstar QueryModel>() : json.map((value) => new Unstar QueryModel.fromJson(value)).toList();
  }

  static Map<String, Unstar QueryModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Unstar QueryModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Unstar QueryModel.fromJson(value));
    }
    return map;
  }
}

