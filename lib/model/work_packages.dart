part of openproject_dart_sdk.api;

class WorkPackages {

  int total;

  int count;

  WorkPackagesEmbedded embedded;

  WorkPackages({
    this.total,
    this.count,
    this.embedded,
  });

  @override
  String toString() {
    return 'WorkPackages[total=$total, count=$count, embedded=$embedded, ]';
  }

  WorkPackages.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    total = json['total'];
    count = json['count'];
    embedded = (json['_embedded'] == null) ?
      null :
      WorkPackagesEmbedded.fromJson(json['_embedded']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (total != null)
      json['total'] = total;
    if (count != null)
      json['count'] = count;
    if (embedded != null)
      json['_embedded'] = embedded;
    return json;
  }

  static List<WorkPackages> listFromJson(List<dynamic> json) {
    return json == null ? List<WorkPackages>() : json.map((value) => WorkPackages.fromJson(value)).toList();
  }

  static Map<String, WorkPackages> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, WorkPackages>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = WorkPackages.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of WorkPackages-objects as value to a dart map
  static Map<String, List<WorkPackages>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<WorkPackages>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = WorkPackages.listFromJson(value);
      });
    }
    return map;
  }
}

