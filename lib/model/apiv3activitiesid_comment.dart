part of swagger.api;

class Apiv3activitiesidComment {
  
  String raw = null;
  
  Apiv3activitiesidComment();

  @override
  String toString() {
    return 'Apiv3activitiesidComment[raw=$raw, ]';
  }

  Apiv3activitiesidComment.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    raw =
        json['raw']
    ;
  }

  Map<String, dynamic> toJson() {
    return {
      'raw': raw
     };
  }

  static List<Apiv3activitiesidComment> listFromJson(List<dynamic> json) {
    return json == null ? new List<Apiv3activitiesidComment>() : json.map((value) => new Apiv3activitiesidComment.fromJson(value)).toList();
  }

  static Map<String, Apiv3activitiesidComment> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Apiv3activitiesidComment>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Apiv3activitiesidComment.fromJson(value));
    }
    return map;
  }
}

