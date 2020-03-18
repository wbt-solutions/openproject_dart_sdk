part of swagger.api;

class PrincipalsModel {
    PrincipalsModel();

  @override
  String toString() {
    return 'PrincipalsModel[]';
  }

  PrincipalsModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<PrincipalsModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<PrincipalsModel>() : json.map((value) => new PrincipalsModel.fromJson(value)).toList();
  }

  static Map<String, PrincipalsModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PrincipalsModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PrincipalsModel.fromJson(value));
    }
    return map;
  }
}

