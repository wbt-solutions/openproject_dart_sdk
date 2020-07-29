part of openproject_dart_sdk.api;

class RootLinks {
  
  Link configuration;
  
  Link user;
  
  Link userPreferences;
  
  Link priorities;
  
  Link relations;
  
  Link statuses;
  
  Link types;
  
  Link workPackages;
  
  Link users;

  RootLinks({
    this.configuration,
    this.user,
    this.userPreferences,
    this.priorities,
    this.relations,
    this.statuses,
    this.types,
    this.workPackages,
    this.users,
  });

  @override
  String toString() {
    return 'RootLinks[configuration=$configuration, user=$user, userPreferences=$userPreferences, priorities=$priorities, relations=$relations, statuses=$statuses, types=$types, workPackages=$workPackages, users=$users, ]';
  }

  RootLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    configuration = (json['configuration'] == null) ?
      null :
      Link.fromJson(json['configuration']);
    user = (json['user'] == null) ?
      null :
      Link.fromJson(json['user']);
    userPreferences = (json['userPreferences'] == null) ?
      null :
      Link.fromJson(json['userPreferences']);
    priorities = (json['priorities'] == null) ?
      null :
      Link.fromJson(json['priorities']);
    relations = (json['relations'] == null) ?
      null :
      Link.fromJson(json['relations']);
    statuses = (json['statuses'] == null) ?
      null :
      Link.fromJson(json['statuses']);
    types = (json['types'] == null) ?
      null :
      Link.fromJson(json['types']);
    workPackages = (json['workPackages'] == null) ?
      null :
      Link.fromJson(json['workPackages']);
    users = (json['users'] == null) ?
      null :
      Link.fromJson(json['users']);
  }

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {};
    if (configuration != null)
      json['configuration'] = configuration;
    if (user != null)
      json['user'] = user;
    if (userPreferences != null)
      json['userPreferences'] = userPreferences;
    if (priorities != null)
      json['priorities'] = priorities;
    if (relations != null)
      json['relations'] = relations;
    if (statuses != null)
      json['statuses'] = statuses;
    if (types != null)
      json['types'] = types;
    if (workPackages != null)
      json['workPackages'] = workPackages;
    if (users != null)
      json['users'] = users;
    return json;
  }

  static List<RootLinks> listFromJson(List<dynamic> json) {
    return json == null ? List<RootLinks>() : json.map((value) => RootLinks.fromJson(value)).toList();
  }

  static Map<String, RootLinks> mapFromJson(Map<String, dynamic> json) {
    final map = Map<String, RootLinks>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = RootLinks.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of RootLinks-objects as value to a dart map
  static Map<String, List<RootLinks>> mapListFromJson(Map<String, dynamic> json) {
    final map = Map<String, List<RootLinks>>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) {
        map[key] = RootLinks.listFromJson(value);
      });
    }
    return map;
  }
}

