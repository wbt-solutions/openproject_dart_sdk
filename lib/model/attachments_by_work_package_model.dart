part of swagger.api;

class Attachments by work packageModel {
    Attachments by work packageModel();

  @override
  String toString() {
    return 'Attachments by work packageModel[]';
  }

  Attachments by work packageModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Attachments by work packageModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<Attachments by work packageModel>() : json.map((value) => new Attachments by work packageModel.fromJson(value)).toList();
  }

  static Map<String, Attachments by work packageModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Attachments by work packageModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Attachments by work packageModel.fromJson(value));
    }
    return map;
  }
}

