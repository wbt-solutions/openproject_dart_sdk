part of swagger.api;

class String ObjectModel {
    String ObjectModel();

  @override
  String toString() {
    return 'String ObjectModel[]';
  }

  String ObjectModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<String ObjectModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<String ObjectModel>() : json.map((value) => new String ObjectModel.fromJson(value)).toList();
  }

  static Map<String, String ObjectModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, String ObjectModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new String ObjectModel.fromJson(value));
    }
    return map;
  }
}

