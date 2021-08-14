//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class ActivityLinks {
  /// Returns a new [ActivityLinks] instance.
  ActivityLinks({
    this.self,
    this.workPackage,
    this.user,
  });

  Link self;

  Link workPackage;

  Link user;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ActivityLinks &&
     other.self == self &&
     other.workPackage == workPackage &&
     other.user == user;

  @override
  int get hashCode =>
    (self == null ? 0 : self.hashCode) +
    (workPackage == null ? 0 : workPackage.hashCode) +
    (user == null ? 0 : user.hashCode);

  @override
  String toString() => 'ActivityLinks[self=$self, workPackage=$workPackage, user=$user]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (self != null) {
      json[r'self'] = self;
    }
    if (workPackage != null) {
      json[r'workPackage'] = workPackage;
    }
    if (user != null) {
      json[r'user'] = user;
    }
    return json;
  }

  /// Returns a new [ActivityLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ActivityLinks fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ActivityLinks(
        self: Link.fromJson(json[r'self']),
        workPackage: Link.fromJson(json[r'workPackage']),
        user: Link.fromJson(json[r'user']),
    );

  static List<ActivityLinks> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ActivityLinks>[]
      : json.map((dynamic value) => ActivityLinks.fromJson(value)).toList(growable: true == growable);

  static Map<String, ActivityLinks> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ActivityLinks>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = ActivityLinks.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ActivityLinks-objects as value to a dart map
  static Map<String, List<ActivityLinks>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ActivityLinks>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = ActivityLinks.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

