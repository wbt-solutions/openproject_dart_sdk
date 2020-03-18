part of swagger.api;

class AttachmentModel {
    AttachmentModel();

  @override
  String toString() {
    return 'AttachmentModel[]';
  }

  AttachmentModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<AttachmentModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<AttachmentModel>() : json.map((value) => new AttachmentModel.fromJson(value)).toList();
  }

  static Map<String, AttachmentModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AttachmentModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AttachmentModel.fromJson(value));
    }
    return map;
  }
}

