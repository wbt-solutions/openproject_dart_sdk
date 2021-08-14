//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class News {
  /// Returns a new [News] instance.
  News({
    this.id,
    this.title,
    this.summary,
    this.description,
    this.createdAt,
    this.updatedAt,
    this.links,
    this.embedded,
  });

  int id;

  String title;

  String summary;

  Description description;

  DateTime createdAt;

  DateTime updatedAt;

  NewsLinks links;

  NewsEmbedded embedded;

  @override
  bool operator ==(Object other) => identical(this, other) || other is News &&
     other.id == id &&
     other.title == title &&
     other.summary == summary &&
     other.description == description &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt &&
     other.links == links &&
     other.embedded == embedded;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (title == null ? 0 : title.hashCode) +
    (summary == null ? 0 : summary.hashCode) +
    (description == null ? 0 : description.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (updatedAt == null ? 0 : updatedAt.hashCode) +
    (links == null ? 0 : links.hashCode) +
    (embedded == null ? 0 : embedded.hashCode);

  @override
  String toString() => 'News[id=$id, title=$title, summary=$summary, description=$description, createdAt=$createdAt, updatedAt=$updatedAt, links=$links, embedded=$embedded]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
    if (title != null) {
      json[r'title'] = title;
    }
    if (summary != null) {
      json[r'summary'] = summary;
    }
    if (description != null) {
      json[r'description'] = description;
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
    if (embedded != null) {
      json[r'_embedded'] = embedded;
    }
    return json;
  }

  /// Returns a new [News] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static News fromJson(Map<String, dynamic> json) => json == null
    ? null
    : News(
        id: json[r'id'],
        title: json[r'title'],
        summary: json[r'summary'],
        description: Description.fromJson(json[r'description']),
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        updatedAt: json[r'updatedAt'] == null
          ? null
          : DateTime.parse(json[r'updatedAt']),
        links: NewsLinks.fromJson(json[r'_links']),
        embedded: NewsEmbedded.fromJson(json[r'_embedded']),
    );

  static List<News> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <News>[]
      : json.map((dynamic value) => News.fromJson(value)).toList(growable: true == growable);

  static Map<String, News> mapFromJson(Map<String, dynamic> json) {
    final map = <String, News>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = News.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of News-objects as value to a dart map
  static Map<String, List<News>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<News>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = News.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

