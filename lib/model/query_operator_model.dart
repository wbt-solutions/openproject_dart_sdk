part of swagger.api;

class Query OperatorModel {
    Query OperatorModel();

  @override
  String toString() {
    return 'Query OperatorModel[]';
  }

  Query OperatorModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Query OperatorModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<Query OperatorModel>() : json.map((value) => new Query OperatorModel.fromJson(value)).toList();
  }

  static Map<String, Query OperatorModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Query OperatorModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Query OperatorModel.fromJson(value));
    }
    return map;
  }
}

