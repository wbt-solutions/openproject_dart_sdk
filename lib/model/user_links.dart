part of openproject_dart_sdk.api;

class UserLinks {
  
  Link self = null;
  
  Link show_ = null;
  
  Link lock = null;
  
  Link updateImmediately = null;
  
  Link delete = null;
  UserLinks();

  @override
  String toString() {
    return 'UserLinks[self=$self, show_=$show_, lock=$lock, updateImmediately=$updateImmediately, delete=$delete, ]';
  }

  UserLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    self = (json['self'] == null) ?
      null :
      Link.fromJson(json['self']);
    show_ = (json['show'] == null) ?
      null :
      Link.fromJson(json['show']);
    lock = (json['lock'] == null) ?
      null :
      Link.fromJson(json['lock']);
    updateImmediately = (json['updateImmediately'] == null) ?
      null :
      Link.fromJson(json['updateImmediately']);
    delete = (json['delete'] == null) ?
      null :
      Link.fromJson(json['delete']);
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (self != null)
      json['self'] = self;
    if (show_ != null)
      json['show'] = show_;
    if (lock != null)
      json['lock'] = lock;
    if (updateImmediately != null)
      json['updateImmediately'] = updateImmediately;
    if (delete != null)
      json['delete'] = delete;
    return json;
  }

  static List<UserLinks> listFromJson(List<dynamic> json) {
    return json == null ? List<UserLinks>() : json.map((value) => UserLinks.fromJson(value)).toList();
  }

  static Map<String, UserLinks> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, UserLinks>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = UserLinks.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of UserLinks-objects as value to a dart map
  static Map<String, List<UserLinks>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<UserLinks>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = UserLinks.listFromJson(value);
       });
     }
     return map;
  }
}

