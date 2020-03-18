part of swagger.api;

class Available relation candidatesModel {
    Available relation candidatesModel();

  @override
  String toString() {
    return 'Available relation candidatesModel[]';
  }

  Available relation candidatesModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Available relation candidatesModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<Available relation candidatesModel>() : json.map((value) => new Available relation candidatesModel.fromJson(value)).toList();
  }

  static Map<String, Available relation candidatesModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Available relation candidatesModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Available relation candidatesModel.fromJson(value));
    }
    return map;
  }
}

