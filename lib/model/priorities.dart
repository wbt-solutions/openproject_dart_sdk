//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class Priorities {
  /// Returns a new [Priorities] instance.
  Priorities({
    this.total,
    this.count,
    this.embedded,
    this.links,
  });

  int total;

  int count;

  PrioritiesEmbedded embedded;

  PrioritiesLinks links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Priorities &&
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
  String toString() => 'Priorities[total=$total, count=$count, embedded=$embedded, links=$links]';

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

  /// Returns a new [Priorities] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Priorities fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Priorities(
        total: json[r'total'],
        count: json[r'count'],
        embedded: PrioritiesEmbedded.fromJson(json[r'_embedded']),
        links: PrioritiesLinks.fromJson(json[r'_links']),
    );

  static List<Priorities> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Priorities>[]
      : json.map((dynamic value) => Priorities.fromJson(value)).toList(growable: true == growable);

  static Map<String, Priorities> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Priorities>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = Priorities.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Priorities-objects as value to a dart map
  static Map<String, List<Priorities>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Priorities>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = Priorities.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

