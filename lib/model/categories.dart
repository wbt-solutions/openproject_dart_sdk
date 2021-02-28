//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class Categories {
  /// Returns a new [Categories] instance.
  Categories({
    this.total,
    this.count,
    this.embedded,
  });

  int total;

  int count;

  CategoriesEmbedded embedded;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Categories &&
     other.total == total &&
     other.count == count &&
     other.embedded == embedded;

  @override
  int get hashCode =>
    (total == null ? 0 : total.hashCode) +
    (count == null ? 0 : count.hashCode) +
    (embedded == null ? 0 : embedded.hashCode);

  @override
  String toString() => 'Categories[total=$total, count=$count, embedded=$embedded]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (total != null) {
      json[r'total'] = total;
    }
    if (count != null) {
      json[r'count'] = count;
    }
    if (embedded != null) {
      json[r'_embedded'] = embedded;
    }
    return json;
  }

  /// Returns a new [Categories] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Categories fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Categories(
        total: json[r'total'],
        count: json[r'count'],
        embedded: CategoriesEmbedded.fromJson(json[r'_embedded']),
    );

  static List<Categories> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Categories>[]
      : json.map((v) => Categories.fromJson(v)).toList(growable: true == growable);

  static Map<String, Categories> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Categories>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = Categories.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of Categories-objects as value to a dart map
  static Map<String, List<Categories>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Categories>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = Categories.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

