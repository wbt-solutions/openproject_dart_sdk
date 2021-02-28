//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class WPType {
  /// Returns a new [WPType] instance.
  WPType({
    this.id,
    this.name,
    this.color,
    this.position,
    this.isDefault = false,
    this.isMilestone = false,
    this.createdAt,
    this.updatedAt,
    this.links,
  });

  int id;

  String name;

  String color;

  int position;

  bool isDefault;

  bool isMilestone;

  DateTime createdAt;

  DateTime updatedAt;

  WPTypeLinks links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WPType &&
     other.id == id &&
     other.name == name &&
     other.color == color &&
     other.position == position &&
     other.isDefault == isDefault &&
     other.isMilestone == isMilestone &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt &&
     other.links == links;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (color == null ? 0 : color.hashCode) +
    (position == null ? 0 : position.hashCode) +
    (isDefault == null ? 0 : isDefault.hashCode) +
    (isMilestone == null ? 0 : isMilestone.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (updatedAt == null ? 0 : updatedAt.hashCode) +
    (links == null ? 0 : links.hashCode);

  @override
  String toString() => 'WPType[id=$id, name=$name, color=$color, position=$position, isDefault=$isDefault, isMilestone=$isMilestone, createdAt=$createdAt, updatedAt=$updatedAt, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (name != null) {
      json[r'name'] = name;
    }
    if (color != null) {
      json[r'color'] = color;
    }
    if (position != null) {
      json[r'position'] = position;
    }
    if (isDefault != null) {
      json[r'isDefault'] = isDefault;
    }
    if (isMilestone != null) {
      json[r'isMilestone'] = isMilestone;
    }
    if (createdAt != null) {
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
    }
    if (updatedAt != null) {
      json[r'updatedAt'] = updatedAt.toUtc().toIso8601String();
    }
    if (links != null) {
      json[r'_links'] = links;
    }
    return json;
  }

  /// Returns a new [WPType] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WPType fromJson(Map<String, dynamic> json) => json == null
    ? null
    : WPType(
        id: json[r'id'],
        name: json[r'name'],
        color: json[r'color'],
        position: json[r'position'],
        isDefault: json[r'isDefault'],
        isMilestone: json[r'isMilestone'],
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        updatedAt: json[r'updatedAt'] == null
          ? null
          : DateTime.parse(json[r'updatedAt']),
        links: WPTypeLinks.fromJson(json[r'_links']),
    );

  static List<WPType> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WPType>[]
      : json.map((v) => WPType.fromJson(v)).toList(growable: true == growable);

  static Map<String, WPType> mapFromJson(Map<String, dynamic> json) {
    final map = <String, WPType>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = WPType.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of WPType-objects as value to a dart map
  static Map<String, List<WPType>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<WPType>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = WPType.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

