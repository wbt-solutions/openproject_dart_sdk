part of swagger.api;

class QueriesModel {
    QueriesModel();

  @override
  String toString() {
    return 'QueriesModel[]';
  }

  QueriesModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<QueriesModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<QueriesModel>() : json.map((value) => new QueriesModel.fromJson(value)).toList();
  }

  static Map<String, QueriesModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, QueriesModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new QueriesModel.fromJson(value));
    }
    return map;
  }
}

