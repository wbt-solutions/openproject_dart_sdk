//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class StatusLinks {
  /// Returns a new [StatusLinks] instance.
  StatusLinks({
    this.self,
  });

  Link self;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StatusLinks &&
     other.self == self;

  @override
  int get hashCode =>
    (self == null ? 0 : self.hashCode);

  @override
  String toString() => 'StatusLinks[self=$self]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (self != null) {
      json[r'self'] = self;
    }
    return json;
  }

  /// Returns a new [StatusLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static StatusLinks fromJson(Map<String, dynamic> json) => json == null
    ? null
    : StatusLinks(
        self: Link.fromJson(json[r'self']),
    );

  static List<StatusLinks> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <StatusLinks>[]
      : json.map((dynamic value) => StatusLinks.fromJson(value)).toList(growable: true == growable);

  static Map<String, StatusLinks> mapFromJson(Map<String, dynamic> json) {
    final map = <String, StatusLinks>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = StatusLinks.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of StatusLinks-objects as value to a dart map
  static Map<String, List<StatusLinks>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<StatusLinks>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = StatusLinks.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

