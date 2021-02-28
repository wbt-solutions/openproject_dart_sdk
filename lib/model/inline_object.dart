//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class InlineObject {
  /// Returns a new [InlineObject] instance.
  InlineObject({
    this.lockVersion,
    this.links,
  });

  String lockVersion;

  ApiV3CustomActionsCustomActionIdExecuteLinks links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InlineObject &&
     other.lockVersion == lockVersion &&
     other.links == links;

  @override
  int get hashCode =>
    (lockVersion == null ? 0 : lockVersion.hashCode) +
    (links == null ? 0 : links.hashCode);

  @override
  String toString() => 'InlineObject[lockVersion=$lockVersion, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (lockVersion != null) {
      json[r'lockVersion'] = lockVersion;
    }
    if (links != null) {
      json[r'_links'] = links;
    }
    return json;
  }

  /// Returns a new [InlineObject] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static InlineObject fromJson(Map<String, dynamic> json) => json == null
    ? null
    : InlineObject(
        lockVersion: json[r'lockVersion'],
        links: ApiV3CustomActionsCustomActionIdExecuteLinks.fromJson(json[r'_links']),
    );

  static List<InlineObject> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <InlineObject>[]
      : json.map((v) => InlineObject.fromJson(v)).toList(growable: true == growable);

  static Map<String, InlineObject> mapFromJson(Map<String, dynamic> json) {
    final map = <String, InlineObject>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = InlineObject.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of InlineObject-objects as value to a dart map
  static Map<String, List<InlineObject>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InlineObject>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = InlineObject.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

