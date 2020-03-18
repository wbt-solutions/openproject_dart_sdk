part of swagger.api;

class ConfigurationModel {
    ConfigurationModel();

  @override
  String toString() {
    return 'ConfigurationModel[]';
  }

  ConfigurationModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<ConfigurationModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<ConfigurationModel>() : json.map((value) => new ConfigurationModel.fromJson(value)).toList();
  }

  static Map<String, ConfigurationModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ConfigurationModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ConfigurationModel.fromJson(value));
    }
    return map;
  }
}

