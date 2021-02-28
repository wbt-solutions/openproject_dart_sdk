//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class PriorityLinks {
  /// Returns a new [PriorityLinks] instance.
  PriorityLinks({
    this.self,
  });

  Link self;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PriorityLinks &&
     other.self == self;

  @override
  int get hashCode =>
    (self == null ? 0 : self.hashCode);

  @override
  String toString() => 'PriorityLinks[self=$self]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (self != null) {
      json[r'self'] = self;
    }
    return json;
  }

  /// Returns a new [PriorityLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PriorityLinks fromJson(Map<String, dynamic> json) => json == null
    ? null
    : PriorityLinks(
        self: Link.fromJson(json[r'self']),
    );

  static List<PriorityLinks> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <PriorityLinks>[]
      : json.map((v) => PriorityLinks.fromJson(v)).toList(growable: true == growable);

  static Map<String, PriorityLinks> mapFromJson(Map<String, dynamic> json) {
    final map = <String, PriorityLinks>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = PriorityLinks.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of PriorityLinks-objects as value to a dart map
  static Map<String, List<PriorityLinks>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PriorityLinks>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = PriorityLinks.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

