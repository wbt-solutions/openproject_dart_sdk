//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class StatusesLinks {
  /// Returns a new [StatusesLinks] instance.
  StatusesLinks({
    this.self,
  });

  Link self;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StatusesLinks &&
     other.self == self;

  @override
  int get hashCode =>
    (self == null ? 0 : self.hashCode);

  @override
  String toString() => 'StatusesLinks[self=$self]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (self != null) {
      json[r'self'] = self;
    }
    return json;
  }

  /// Returns a new [StatusesLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static StatusesLinks fromJson(Map<String, dynamic> json) => json == null
    ? null
    : StatusesLinks(
        self: Link.fromJson(json[r'self']),
    );

  static List<StatusesLinks> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <StatusesLinks>[]
      : json.map((v) => StatusesLinks.fromJson(v)).toList(growable: true == growable);

  static Map<String, StatusesLinks> mapFromJson(Map<String, dynamic> json) {
    final map = <String, StatusesLinks>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = StatusesLinks.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of StatusesLinks-objects as value to a dart map
  static Map<String, List<StatusesLinks>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<StatusesLinks>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = StatusesLinks.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

