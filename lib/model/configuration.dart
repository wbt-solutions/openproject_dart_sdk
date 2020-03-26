part of openproject_dart_sdk.api;

class Configuration {
  
  int maximumAttachmentFileSize = null;
  
  List<int> perPageOptions = [];
  Configuration();

  @override
  String toString() {
    return 'Configuration[maximumAttachmentFileSize=$maximumAttachmentFileSize, perPageOptions=$perPageOptions, ]';
  }

  Configuration.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    maximumAttachmentFileSize = json['maximumAttachmentFileSize'];
    perPageOptions = (json['perPageOptions'] == null) ?
      null :
      (json['perPageOptions'] as List).cast<int>();
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (maximumAttachmentFileSize != null)
      json['maximumAttachmentFileSize'] = maximumAttachmentFileSize;
    if (perPageOptions != null)
      json['perPageOptions'] = perPageOptions;
    return json;
  }

  static List<Configuration> listFromJson(List<dynamic> json) {
    return json == null ? List<Configuration>() : json.map((value) => Configuration.fromJson(value)).toList();
  }

  static Map<String, Configuration> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, Configuration>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Configuration.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Configuration-objects as value to a dart map
  static Map<String, List<Configuration>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<Configuration>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = Configuration.listFromJson(value);
       });
     }
     return map;
  }
}

