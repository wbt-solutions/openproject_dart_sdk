//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CategoriesEmbedded {
  /// Returns a new [CategoriesEmbedded] instance.
  CategoriesEmbedded({
    this.elements = const [],
  });

  List<Category> elements;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CategoriesEmbedded &&
     other.elements == elements;

  @override
  int get hashCode =>
    (elements == null ? 0 : elements.hashCode);

  @override
  String toString() => 'CategoriesEmbedded[elements=$elements]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (elements != null) {
      json[r'elements'] = elements;
    }
    return json;
  }

  /// Returns a new [CategoriesEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CategoriesEmbedded fromJson(Map<String, dynamic> json) => json == null
    ? null
    : CategoriesEmbedded(
        elements: Category.listFromJson(json[r'elements']),
    );

  static List<CategoriesEmbedded> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <CategoriesEmbedded>[]
      : json.map((v) => CategoriesEmbedded.fromJson(v)).toList(growable: true == growable);

  static Map<String, CategoriesEmbedded> mapFromJson(Map<String, dynamic> json) {
    final map = <String, CategoriesEmbedded>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = CategoriesEmbedded.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of CategoriesEmbedded-objects as value to a dart map
  static Map<String, List<CategoriesEmbedded>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<CategoriesEmbedded>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = CategoriesEmbedded.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

