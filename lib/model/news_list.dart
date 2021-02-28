//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class NewsList {
  /// Returns a new [NewsList] instance.
  NewsList({
    this.total,
    this.count,
    this.pageSize,
    this.offset,
    this.embedded,
    this.links,
  });

  int total;

  int count;

  int pageSize;

  int offset;

  NewsListEmbedded embedded;

  NewsListLinks links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NewsList &&
     other.total == total &&
     other.count == count &&
     other.pageSize == pageSize &&
     other.offset == offset &&
     other.embedded == embedded &&
     other.links == links;

  @override
  int get hashCode =>
    (total == null ? 0 : total.hashCode) +
    (count == null ? 0 : count.hashCode) +
    (pageSize == null ? 0 : pageSize.hashCode) +
    (offset == null ? 0 : offset.hashCode) +
    (embedded == null ? 0 : embedded.hashCode) +
    (links == null ? 0 : links.hashCode);

  @override
  String toString() => 'NewsList[total=$total, count=$count, pageSize=$pageSize, offset=$offset, embedded=$embedded, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (total != null) {
      json[r'total'] = total;
    }
    if (count != null) {
      json[r'count'] = count;
    }
    if (pageSize != null) {
      json[r'pageSize'] = pageSize;
    }
    if (offset != null) {
      json[r'offset'] = offset;
    }
    if (embedded != null) {
      json[r'_embedded'] = embedded;
    }
    if (links != null) {
      json[r'_links'] = links;
    }
    return json;
  }

  /// Returns a new [NewsList] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static NewsList fromJson(Map<String, dynamic> json) => json == null
    ? null
    : NewsList(
        total: json[r'total'],
        count: json[r'count'],
        pageSize: json[r'pageSize'],
        offset: json[r'offset'],
        embedded: NewsListEmbedded.fromJson(json[r'_embedded']),
        links: NewsListLinks.fromJson(json[r'_links']),
    );

  static List<NewsList> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <NewsList>[]
      : json.map((v) => NewsList.fromJson(v)).toList(growable: true == growable);

  static Map<String, NewsList> mapFromJson(Map<String, dynamic> json) {
    final map = <String, NewsList>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = NewsList.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of NewsList-objects as value to a dart map
  static Map<String, List<NewsList>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<NewsList>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = NewsList.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

