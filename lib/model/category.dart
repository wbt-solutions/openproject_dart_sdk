//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class Category {
  /// Returns a new [Category] instance.
  Category({
    this.id,
    this.name,
    this.links,
  });

  int id;

  String name;

  CategoryLinks links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Category &&
     other.id == id &&
     other.name == name &&
     other.links == links;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (links == null ? 0 : links.hashCode);

  @override
  String toString() => 'Category[id=$id, name=$name, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (links != null) {
      json[r'_links'] = links;
    }
    return json;
  }

  /// Returns a new [Category] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Category fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Category(
        id: json[r'id'],
        name: json[r'name'],
        links: CategoryLinks.fromJson(json[r'_links']),
    );

  static List<Category> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Category>[]
      : json.map((v) => Category.fromJson(v)).toList(growable: true == growable);

  static Map<String, Category> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Category>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = Category.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of Category-objects as value to a dart map
  static Map<String, List<Category>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Category>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = Category.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

