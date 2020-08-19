part of openproject_dart_sdk.api;

class Digest {
  
  String algorithm;
  
  String hash;

  Digest({
    this.algorithm,
    this.hash,
  });

  @override
  String toString() {
    return 'Digest[algorithm=$algorithm, hash=$hash, ]';
  }

  Digest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    algorithm = json['algorithm'];
    hash = json['hash'];
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (algorithm != null)
      json['algorithm'] = algorithm;
    if (hash != null)
      json['hash'] = hash;
    return json;
  }

  static List<Digest> listFromJson(List<dynamic> json) {
    return json == null ? List<Digest>() : json.map((value) => Digest.fromJson(value)).toList();
  }

  static Map<String, Digest> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, Digest>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Digest.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Digest-objects as value to a dart map
  static Map<String, List<Digest>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<Digest>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = Digest.listFromJson(value);
      });
    }
    return map;
  }
}

