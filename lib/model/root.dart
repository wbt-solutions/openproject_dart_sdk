//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class Root {
  /// Returns a new [Root] instance.
  Root({
    this.instanceName,
    this.coreVersion,
    this.links,
  });

  String instanceName;

  String coreVersion;

  RootLinks links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Root &&
     other.instanceName == instanceName &&
     other.coreVersion == coreVersion &&
     other.links == links;

  @override
  int get hashCode =>
    (instanceName == null ? 0 : instanceName.hashCode) +
    (coreVersion == null ? 0 : coreVersion.hashCode) +
    (links == null ? 0 : links.hashCode);

  @override
  String toString() => 'Root[instanceName=$instanceName, coreVersion=$coreVersion, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (instanceName != null) {
      json[r'instanceName'] = instanceName;
    }
    if (coreVersion != null) {
      json[r'coreVersion'] = coreVersion;
    }
    if (links != null) {
      json[r'_links'] = links;
    }
    return json;
  }

  /// Returns a new [Root] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Root fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Root(
        instanceName: json[r'instanceName'],
        coreVersion: json[r'coreVersion'],
        links: RootLinks.fromJson(json[r'_links']),
    );

  static List<Root> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Root>[]
      : json.map((v) => Root.fromJson(v)).toList(growable: true == growable);

  static Map<String, Root> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Root>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = Root.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of Root-objects as value to a dart map
  static Map<String, List<Root>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Root>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = Root.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

