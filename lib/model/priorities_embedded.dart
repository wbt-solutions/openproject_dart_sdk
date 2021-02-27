//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class PrioritiesEmbedded {
  /// Returns a new [PrioritiesEmbedded] instance.
  PrioritiesEmbedded({
    this.elements = const [],
  });

  List<Priority> elements;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PrioritiesEmbedded &&
     other.elements == elements;

  @override
  int get hashCode =>
    (elements == null ? 0 : elements.hashCode);

  @override
  String toString() => 'PrioritiesEmbedded[elements=$elements]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (elements != null) {
      json[r'elements'] = elements;
    }
    return json;
  }

  /// Returns a new [PrioritiesEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static PrioritiesEmbedded fromJson(Map<String, dynamic> json) => json == null
    ? null
    : PrioritiesEmbedded(
        elements: Priority.listFromJson(json[r'elements']),
    );

  static List<PrioritiesEmbedded> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <PrioritiesEmbedded>[]
      : json.map((v) => PrioritiesEmbedded.fromJson(v)).toList(growable: true == growable);

  static Map<String, PrioritiesEmbedded> mapFromJson(Map<String, dynamic> json) {
    final map = <String, PrioritiesEmbedded>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = PrioritiesEmbedded.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of PrioritiesEmbedded-objects as value to a dart map
  static Map<String, List<PrioritiesEmbedded>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<PrioritiesEmbedded>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = PrioritiesEmbedded.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

