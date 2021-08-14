//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class TimeEntries {
  /// Returns a new [TimeEntries] instance.
  TimeEntries({
    this.total,
    this.count,
    this.embedded,
    this.links,
  });

  int total;

  int count;

  TimeEntriesEmbedded embedded;

  TimeEntriesLinks links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TimeEntries &&
     other.total == total &&
     other.count == count &&
     other.embedded == embedded &&
     other.links == links;

  @override
  int get hashCode =>
    (total == null ? 0 : total.hashCode) +
    (count == null ? 0 : count.hashCode) +
    (embedded == null ? 0 : embedded.hashCode) +
    (links == null ? 0 : links.hashCode);

  @override
  String toString() => 'TimeEntries[total=$total, count=$count, embedded=$embedded, links=$links]';

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
    if (links != null) {
      json[r'_links'] = links;
    }
    return json;
  }

  /// Returns a new [TimeEntries] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static TimeEntries fromJson(Map<String, dynamic> json) => json == null
    ? null
    : TimeEntries(
        total: json[r'total'],
        count: json[r'count'],
        embedded: TimeEntriesEmbedded.fromJson(json[r'_embedded']),
        links: TimeEntriesLinks.fromJson(json[r'_links']),
    );

  static List<TimeEntries> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <TimeEntries>[]
      : json.map((dynamic value) => TimeEntries.fromJson(value)).toList(growable: true == growable);

  static Map<String, TimeEntries> mapFromJson(Map<String, dynamic> json) {
    final map = <String, TimeEntries>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = TimeEntries.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of TimeEntries-objects as value to a dart map
  static Map<String, List<TimeEntries>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<TimeEntries>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = TimeEntries.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

