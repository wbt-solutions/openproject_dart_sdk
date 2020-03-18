part of swagger.api;

class TextileModel {
    TextileModel();

  @override
  String toString() {
    return 'TextileModel[]';
  }

  TextileModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<TextileModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<TextileModel>() : json.map((value) => new TextileModel.fromJson(value)).toList();
  }

  static Map<String, TextileModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TextileModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TextileModel.fromJson(value));
    }
    return map;
  }
}

