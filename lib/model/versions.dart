part of openproject_dart_sdk.api;

class Versions {
  
  int total;
  
  int count;
  
  VersionsEmbedded embedded;

  Versions({
    this.total,
    this.count,
    this.embedded,
  });

  @override
  String toString() {
    return 'Versions[total=$total, count=$count, embedded=$embedded, ]';
  }

  Versions.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    total = json['total'];
    count = json['count'];
    embedded = (json['_embedded'] == null) ?
      null :
      VersionsEmbedded.fromJson(json['_embedded']);
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

  static List<Versions> listFromJson(List<dynamic> json) {
    return json == null ? List<Versions>() : json.map((value) => Versions.fromJson(value)).toList();
  }

  static Map<String, Versions> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, Versions>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Versions.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Versions-objects as value to a dart map
  static Map<String, List<Versions>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<Versions>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = Versions.listFromJson(value);
      });
    }
    return map;
  }
}

