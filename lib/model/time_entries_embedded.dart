//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class TimeEntriesEmbedded {
  /// Returns a new [TimeEntriesEmbedded] instance.
  TimeEntriesEmbedded({
    this.elements = const [],
  });

  List<TimeEntry> elements;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TimeEntriesEmbedded &&
     other.elements == elements;

  @override
  int get hashCode =>
    (elements == null ? 0 : elements.hashCode);

  @override
  String toString() => 'TimeEntriesEmbedded[elements=$elements]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (elements != null) {
      json[r'elements'] = elements;
    }
    return json;
  }

  /// Returns a new [TimeEntriesEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static TimeEntriesEmbedded fromJson(Map<String, dynamic> json) => json == null
    ? null
    : TimeEntriesEmbedded(
        elements: TimeEntry.listFromJson(json[r'elements']),
    );

  static List<TimeEntriesEmbedded> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <TimeEntriesEmbedded>[]
      : json.map((v) => TimeEntriesEmbedded.fromJson(v)).toList(growable: true == growable);

  static Map<String, TimeEntriesEmbedded> mapFromJson(Map<String, dynamic> json) {
    final map = <String, TimeEntriesEmbedded>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = TimeEntriesEmbedded.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of TimeEntriesEmbedded-objects as value to a dart map
  static Map<String, List<TimeEntriesEmbedded>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<TimeEntriesEmbedded>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = TimeEntriesEmbedded.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

