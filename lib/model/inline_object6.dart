//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class InlineObject6 {
  /// Returns a new [InlineObject6] instance.
  InlineObject6({
    this.user,
  });

  ApiV3CustomActionsCustomActionIdExecuteLinksWorkPackage user;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InlineObject6 &&
     other.user == user;

  @override
  int get hashCode =>
    (user == null ? 0 : user.hashCode);

  @override
  String toString() => 'InlineObject6[user=$user]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (user != null) {
      json[r'user'] = user;
    }
    return json;
  }

  /// Returns a new [InlineObject6] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static InlineObject6 fromJson(Map<String, dynamic> json) => json == null
    ? null
    : InlineObject6(
        user: ApiV3CustomActionsCustomActionIdExecuteLinksWorkPackage.fromJson(json[r'user']),
    );

  static List<InlineObject6> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <InlineObject6>[]
      : json.map((v) => InlineObject6.fromJson(v)).toList(growable: true == growable);

  static Map<String, InlineObject6> mapFromJson(Map<String, dynamic> json) {
    final map = <String, InlineObject6>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = InlineObject6.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of InlineObject6-objects as value to a dart map
  static Map<String, List<InlineObject6>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InlineObject6>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = InlineObject6.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

