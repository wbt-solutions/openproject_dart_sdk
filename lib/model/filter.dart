part of openproject_dart_sdk.api;

class Filter {
  
  String operator_;
  
  List<String> values = const [];

  Filter({
    this.operator_,
    this.values = const [],
  });

  @override
  String toString() {
    return 'Filter[operator_=$operator_, values=$values, ]';
  }

  Filter.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    operator_ = json['operator'];
    values = (json['values'] == null) ?
      null :
      (json['values'] as List).cast<String>();
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (operator_ != null)
      json['operator'] = operator_;
    if (values != null)
      json['values'] = values;
    return json;
  }

  static List<Filter> listFromJson(List<dynamic> json) {
    return json == null ? List<Filter>() : json.map((value) => Filter.fromJson(value)).toList();
  }

  static Map<String, Filter> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, Filter>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Filter.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Filter-objects as value to a dart map
  static Map<String, List<Filter>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<Filter>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = Filter.listFromJson(value);
      });
    }
    return map;
  }
}

