part of swagger.api;

class Remove Watcher {
    Remove Watcher();

  @override
  String toString() {
    return 'Remove Watcher[]';
  }

  Remove Watcher.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Remove Watcher> listFromJson(List<dynamic> json) {
    return json == null ? new List<Remove Watcher>() : json.map((value) => new Remove Watcher.fromJson(value)).toList();
  }

  static Map<String, Remove Watcher> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Remove Watcher>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Remove Watcher.fromJson(value));
    }
    return map;
  }
}

