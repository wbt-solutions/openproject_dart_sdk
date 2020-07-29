part of openproject_dart_sdk.api;

class Budget {
  
  int id;
  
  String subject;
  
  BudgetLinks links;

  Budget({
    this.id,
    this.subject,
    this.links,
  });

  @override
  String toString() {
    return 'Budget[id=$id, subject=$subject, links=$links, ]';
  }

  Budget.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    subject = json['subject'];
    links = (json['_links'] == null) ?
      null :
      BudgetLinks.fromJson(json['_links']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (id != null)
      json['id'] = id;
    if (subject != null)
      json['subject'] = subject;
    if (links != null)
      json['_links'] = links;
    return json;
  }

  static List<Budget> listFromJson(List<dynamic> json) {
    return json == null ? List<Budget>() : json.map((value) => Budget.fromJson(value)).toList();
  }

  static Map<String, Budget> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, Budget>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = Budget.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Budget-objects as value to a dart map
  static Map<String, List<Budget>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<Budget>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = Budget.listFromJson(value);
      });
    }
    return map;
  }
}

