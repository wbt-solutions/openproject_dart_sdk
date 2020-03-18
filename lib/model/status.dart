part of swagger.api;

class Status {
    Status();

  @override
  String toString() {
    return 'Status[]';
  }

  Status.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Status> listFromJson(List<dynamic> json) {
    return json == null ? new List<Status>() : json.map((value) => new Status.fromJson(value)).toList();
  }

  static Map<String, Status> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Status>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Status.fromJson(value));
    }
    return map;
  }
}

