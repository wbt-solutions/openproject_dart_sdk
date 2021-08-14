//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class UserPreferences {
  /// Returns a new [UserPreferences] instance.
  UserPreferences({
    this.hideMail,
    this.timeZone,
    this.commentSortDescending,
    this.warnOnLeavingUnsaved,
    this.accessibilityMode,
    this.links,
  });

  bool hideMail;

  String timeZone;

  bool commentSortDescending;

  bool warnOnLeavingUnsaved;

  bool accessibilityMode;

  UserPreferencesLinks links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UserPreferences &&
     other.hideMail == hideMail &&
     other.timeZone == timeZone &&
     other.commentSortDescending == commentSortDescending &&
     other.warnOnLeavingUnsaved == warnOnLeavingUnsaved &&
     other.accessibilityMode == accessibilityMode &&
     other.links == links;

  @override
  int get hashCode =>
    (hideMail == null ? 0 : hideMail.hashCode) +
    (timeZone == null ? 0 : timeZone.hashCode) +
    (commentSortDescending == null ? 0 : commentSortDescending.hashCode) +
    (warnOnLeavingUnsaved == null ? 0 : warnOnLeavingUnsaved.hashCode) +
    (accessibilityMode == null ? 0 : accessibilityMode.hashCode) +
    (links == null ? 0 : links.hashCode);

  @override
  String toString() => 'UserPreferences[hideMail=$hideMail, timeZone=$timeZone, commentSortDescending=$commentSortDescending, warnOnLeavingUnsaved=$warnOnLeavingUnsaved, accessibilityMode=$accessibilityMode, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (hideMail != null) {
      json[r'hideMail'] = hideMail;
    }
    if (timeZone != null) {
      json[r'timeZone'] = timeZone;
    }
    if (commentSortDescending != null) {
      json[r'commentSortDescending'] = commentSortDescending;
    }
    if (warnOnLeavingUnsaved != null) {
      json[r'warnOnLeavingUnsaved'] = warnOnLeavingUnsaved;
    }
    if (accessibilityMode != null) {
      json[r'accessibilityMode'] = accessibilityMode;
    }
    if (links != null) {
      json[r'_links'] = links;
    }
    return json;
  }

  /// Returns a new [UserPreferences] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static UserPreferences fromJson(Map<String, dynamic> json) => json == null
    ? null
    : UserPreferences(
        hideMail: json[r'hideMail'],
        timeZone: json[r'timeZone'],
        commentSortDescending: json[r'commentSortDescending'],
        warnOnLeavingUnsaved: json[r'warnOnLeavingUnsaved'],
        accessibilityMode: json[r'accessibilityMode'],
        links: UserPreferencesLinks.fromJson(json[r'_links']),
    );

  static List<UserPreferences> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <UserPreferences>[]
      : json.map((dynamic value) => UserPreferences.fromJson(value)).toList(growable: true == growable);

  static Map<String, UserPreferences> mapFromJson(Map<String, dynamic> json) {
    final map = <String, UserPreferences>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = UserPreferences.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of UserPreferences-objects as value to a dart map
  static Map<String, List<UserPreferences>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<UserPreferences>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = UserPreferences.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

