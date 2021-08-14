//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class TimeEntriesActivity {
  /// Returns a new [TimeEntriesActivity] instance.
  TimeEntriesActivity({
    this.id,
    this.name,
    this.position,
    this.default_,
    this.embedded,
    this.links,
  });

  int id;

  String name;

  int position;

  bool default_;

  TimeEntriesActivityEmbedded embedded;

  TimeEntriesActivityLinks links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TimeEntriesActivity &&
     other.id == id &&
     other.name == name &&
     other.position == position &&
     other.default_ == default_ &&
     other.embedded == embedded &&
     other.links == links;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (name == null ? 0 : name.hashCode) +
    (position == null ? 0 : position.hashCode) +
    (default_ == null ? 0 : default_.hashCode) +
    (embedded == null ? 0 : embedded.hashCode) +
    (links == null ? 0 : links.hashCode);

  @override
  String toString() => 'TimeEntriesActivity[id=$id, name=$name, position=$position, default_=$default_, embedded=$embedded, links=$links]';

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
    if (default_ != null) {
      json[r'default'] = default_;
    }
    if (embedded != null) {
      json[r'_embedded'] = embedded;
    }
    if (links != null) {
      json[r'_links'] = links;
    }
    return json;
  }

  /// Returns a new [TimeEntriesActivity] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static TimeEntriesActivity fromJson(Map<String, dynamic> json) => json == null
    ? null
    : TimeEntriesActivity(
        id: json[r'id'],
        name: json[r'name'],
        position: json[r'position'],
        default_: json[r'default'],
        embedded: TimeEntriesActivityEmbedded.fromJson(json[r'_embedded']),
        links: TimeEntriesActivityLinks.fromJson(json[r'_links']),
    );

  static List<TimeEntriesActivity> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <TimeEntriesActivity>[]
      : json.map((dynamic value) => TimeEntriesActivity.fromJson(value)).toList(growable: true == growable);

  static Map<String, TimeEntriesActivity> mapFromJson(Map<String, dynamic> json) {
    final map = <String, TimeEntriesActivity>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = TimeEntriesActivity.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TimeEntriesActivity-objects as value to a dart map
  static Map<String, List<TimeEntriesActivity>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<TimeEntriesActivity>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = TimeEntriesActivity.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

