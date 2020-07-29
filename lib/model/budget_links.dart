part of openproject_dart_sdk.api;

class BudgetLinks {
  
  Link self;
  
  Link attachments;
  
  Link addAttachment;
  
  Link staticPath;

  BudgetLinks({
    this.self,
    this.attachments,
    this.addAttachment,
    this.staticPath,
  });

  @override
  String toString() {
    return 'BudgetLinks[self=$self, attachments=$attachments, addAttachment=$addAttachment, staticPath=$staticPath, ]';
  }

  BudgetLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    self = (json['self'] == null) ?
      null :
      Link.fromJson(json['self']);
    attachments = (json['attachments'] == null) ?
      null :
      Link.fromJson(json['attachments']);
    addAttachment = (json['addAttachment'] == null) ?
      null :
      Link.fromJson(json['addAttachment']);
    staticPath = (json['staticPath'] == null) ?
      null :
      Link.fromJson(json['staticPath']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (self != null)
      json['self'] = self;
    if (attachments != null)
      json['attachments'] = attachments;
    if (addAttachment != null)
      json['addAttachment'] = addAttachment;
    if (staticPath != null)
      json['staticPath'] = staticPath;
    return json;
  }

  static List<BudgetLinks> listFromJson(List<dynamic> json) {
    return json == null ? List<BudgetLinks>() : json.map((value) => BudgetLinks.fromJson(value)).toList();
  }

  static Map<String, BudgetLinks> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, BudgetLinks>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = BudgetLinks.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of BudgetLinks-objects as value to a dart map
  static Map<String, List<BudgetLinks>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<BudgetLinks>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = BudgetLinks.listFromJson(value);
      });
    }
    return map;
  }
}

