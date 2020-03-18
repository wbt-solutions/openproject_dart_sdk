part of swagger.api;

class CategoryModel {
    CategoryModel();

  @override
  String toString() {
    return 'CategoryModel[]';
  }

  CategoryModel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<CategoryModel> listFromJson(List<dynamic> json) {
    return json == null ? new List<CategoryModel>() : json.map((value) => new CategoryModel.fromJson(value)).toList();
  }

  static Map<String, CategoryModel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CategoryModel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CategoryModel.fromJson(value));
    }
    return map;
  }
}

