//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class WPTypeLinks {
  /// Returns a new [WPTypeLinks] instance.
  WPTypeLinks({
    this.self,
  });

  Link self;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WPTypeLinks &&
     other.self == self;

  @override
  int get hashCode =>
    (self == null ? 0 : self.hashCode);

  @override
  String toString() => 'WPTypeLinks[self=$self]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (self != null) {
      json[r'self'] = self;
    }
    return json;
  }

  /// Returns a new [WPTypeLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WPTypeLinks fromJson(Map<String, dynamic> json) => json == null
    ? null
    : WPTypeLinks(
        self: Link.fromJson(json[r'self']),
    );

  static List<WPTypeLinks> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WPTypeLinks>[]
      : json.map((dynamic value) => WPTypeLinks.fromJson(value)).toList(growable: true == growable);

  static Map<String, WPTypeLinks> mapFromJson(Map<String, dynamic> json) {
    final map = <String, WPTypeLinks>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = WPTypeLinks.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of WPTypeLinks-objects as value to a dart map
  static Map<String, List<WPTypeLinks>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<WPTypeLinks>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = WPTypeLinks.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

