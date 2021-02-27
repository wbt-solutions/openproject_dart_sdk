//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TimeEntry {
  /// Returns a new [TimeEntry] instance.
  TimeEntry({
    this.id,
    this.hours,
    this.comment,
    this.spentOn,
    this.createdAt,
    this.updatedAt,
    this.embedded,
    this.links,
  });

  int id;

  String hours;

  Description comment;

  DateTime spentOn;

  DateTime createdAt;

  DateTime updatedAt;

  TimeEntryEmbedded embedded;

  TimeEntryLinks links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TimeEntry &&
     other.id == id &&
     other.hours == hours &&
     other.comment == comment &&
     other.spentOn == spentOn &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt &&
     other.embedded == embedded &&
     other.links == links;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (hours == null ? 0 : hours.hashCode) +
    (comment == null ? 0 : comment.hashCode) +
    (spentOn == null ? 0 : spentOn.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (updatedAt == null ? 0 : updatedAt.hashCode) +
    (embedded == null ? 0 : embedded.hashCode) +
    (links == null ? 0 : links.hashCode);

  @override
  String toString() => 'TimeEntry[id=$id, hours=$hours, comment=$comment, spentOn=$spentOn, createdAt=$createdAt, updatedAt=$updatedAt, embedded=$embedded, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (hours != null) {
      json[r'hours'] = hours;
    }
    if (comment != null) {
      json[r'comment'] = comment;
    }
    if (spentOn != null) {
      json[r'spentOn'] = _dateFormatter.format(spentOn.toUtc());
    }
    if (createdAt != null) {
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
    }
    if (updatedAt != null) {
      json[r'updatedAt'] = updatedAt.toUtc().toIso8601String();
    }
    if (embedded != null) {
      json[r'_embedded'] = embedded;
    }
    if (links != null) {
      json[r'_links'] = links;
    }
    return json;
  }

  /// Returns a new [TimeEntry] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static TimeEntry fromJson(Map<String, dynamic> json) => json == null
    ? null
    : TimeEntry(
        id: json[r'id'],
        hours: json[r'hours'],
        comment: Description.fromJson(json[r'comment']),
        spentOn: json[r'spentOn'] == null
          ? null
          : DateTime.parse(json[r'spentOn']),
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        updatedAt: json[r'updatedAt'] == null
          ? null
          : DateTime.parse(json[r'updatedAt']),
        embedded: TimeEntryEmbedded.fromJson(json[r'_embedded']),
        links: TimeEntryLinks.fromJson(json[r'_links']),
    );

  static List<TimeEntry> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <TimeEntry>[]
      : json.map((v) => TimeEntry.fromJson(v)).toList(growable: true == growable);

  static Map<String, TimeEntry> mapFromJson(Map<String, dynamic> json) {
    final map = <String, TimeEntry>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = TimeEntry.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of TimeEntry-objects as value to a dart map
  static Map<String, List<TimeEntry>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<TimeEntry>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = TimeEntry.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

