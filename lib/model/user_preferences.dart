part of openproject_dart_sdk.api;

class UserPreferences {
  
  bool hideMail = null;
  
  String timeZone = null;
  
  bool commentSortDescending = null;
  
  bool warnOnLeavingUnsaved = null;
  
  bool accessibilityMode = null;
  UserPreferences();

  @override
  String toString() {
    return 'UserPreferences[hideMail=$hideMail, timeZone=$timeZone, commentSortDescending=$commentSortDescending, warnOnLeavingUnsaved=$warnOnLeavingUnsaved, accessibilityMode=$accessibilityMode, ]';
  }

  UserPreferences.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    hideMail = json['hideMail'];
    timeZone = json['timeZone'];
    commentSortDescending = json['commentSortDescending'];
    warnOnLeavingUnsaved = json['warnOnLeavingUnsaved'];
    accessibilityMode = json['accessibilityMode'];
  }

  Map<String, dynamic> toJson() {
    Map <String, dynamic> json = {};
    if (hideMail != null)
      json['hideMail'] = hideMail;
    if (timeZone != null)
      json['timeZone'] = timeZone;
    if (commentSortDescending != null)
      json['commentSortDescending'] = commentSortDescending;
    if (warnOnLeavingUnsaved != null)
      json['warnOnLeavingUnsaved'] = warnOnLeavingUnsaved;
    if (accessibilityMode != null)
      json['accessibilityMode'] = accessibilityMode;
    return json;
  }

  static List<UserPreferences> listFromJson(List<dynamic> json) {
    return json == null ? List<UserPreferences>() : json.map((value) => UserPreferences.fromJson(value)).toList();
  }

  static Map<String, UserPreferences> mapFromJson(Map<String, dynamic> json) {
    var map = Map<String, UserPreferences>();
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic value) => map[key] = UserPreferences.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of UserPreferences-objects as value to a dart map
  static Map<String, List<UserPreferences>> mapListFromJson(Map<String, dynamic> json) {
    var map = Map<String, List<UserPreferences>>();
     if (json != null && json.isNotEmpty) {
       json.forEach((String key, dynamic value) {
         map[key] = UserPreferences.listFromJson(value);
       });
     }
     return map;
  }
}

