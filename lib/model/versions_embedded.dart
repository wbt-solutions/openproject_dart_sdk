//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class VersionsEmbedded {
  /// Returns a new [VersionsEmbedded] instance.
  VersionsEmbedded({
    this.elements = const [],
  });

  List<Version> elements;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VersionsEmbedded &&
     other.elements == elements;

  @override
  int get hashCode =>
    (elements == null ? 0 : elements.hashCode);

  @override
  String toString() => 'VersionsEmbedded[elements=$elements]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (elements != null) {
      json[r'elements'] = elements;
    }
    return json;
  }

  /// Returns a new [VersionsEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static VersionsEmbedded fromJson(Map<String, dynamic> json) => json == null
    ? null
    : VersionsEmbedded(
        elements: Version.listFromJson(json[r'elements']),
    );

  static List<VersionsEmbedded> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <VersionsEmbedded>[]
      : json.map((v) => VersionsEmbedded.fromJson(v)).toList(growable: true == growable);

  static Map<String, VersionsEmbedded> mapFromJson(Map<String, dynamic> json) {
    final map = <String, VersionsEmbedded>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = VersionsEmbedded.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of VersionsEmbedded-objects as value to a dart map
  static Map<String, List<VersionsEmbedded>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<VersionsEmbedded>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = VersionsEmbedded.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

