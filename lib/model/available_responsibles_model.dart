part of swagger.api;

class Available ResponsiblesModel {
    Available ResponsiblesModel();

  @override
  String toString() {
    return 'Available ResponsiblesModel[]';
  }

  Available ResponsiblesModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Available ResponsiblesModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<Available ResponsiblesModel>() : json.map((value) => new Available ResponsiblesModel.fromJson(value)).toList();
  }

  static Map<String, Available ResponsiblesModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Available ResponsiblesModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Available ResponsiblesModel.fromJson(value));
    }
    return map;
  }
}

