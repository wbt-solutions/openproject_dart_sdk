//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class Priority {
  /// Returns a new [Priority] instance.
  Priority({
    this.id,
    this.name,
    this.position,
    this.isDefault,
    this.isActive,
    this.links,
  });

  int id;

  String name;

  int position;

  bool isDefault;

  bool isActive;

  PriorityLinks links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Priority &&
     other.id == id &&
     other.name == name &&
     other.position == position &&
     other.isDefault == isDefault &&
     other.isActive == isActive &&
     other.links == links;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (position == null ? 0 : position.hashCode) +
    (isDefault == null ? 0 : isDefault.hashCode) +
    (isActive == null ? 0 : isActive.hashCode) +
    (links == null ? 0 : links.hashCode);

  @override
  String toString() => 'Priority[id=$id, name=$name, position=$position, isDefault=$isDefault, isActive=$isActive, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (position != null) {
      json[r'position'] = position;
    }
    if (isDefault != null) {
      json[r'isDefault'] = isDefault;
    }
    if (isActive != null) {
      json[r'isActive'] = isActive;
    }
    if (links != null) {
      json[r'_links'] = links;
    }
    return json;
  }

  /// Returns a new [Priority] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Priority fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Priority(
        id: json[r'id'],
        name: json[r'name'],
        position: json[r'position'],
        isDefault: json[r'isDefault'],
        isActive: json[r'isActive'],
        links: PriorityLinks.fromJson(json[r'_links']),
    );

  static List<Priority> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Priority>[]
      : json.map((v) => Priority.fromJson(v)).toList(growable: true == growable);

  static Map<String, Priority> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Priority>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = Priority.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of Priority-objects as value to a dart map
  static Map<String, List<Priority>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Priority>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = Priority.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

