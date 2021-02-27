//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class NewsEmbedded {
  /// Returns a new [NewsEmbedded] instance.
  NewsEmbedded({
    this.project,
    this.author,
  });

  Project project;

  User author;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NewsEmbedded &&
     other.project == project &&
     other.author == author;

  @override
  int get hashCode =>
    (project == null ? 0 : project.hashCode) +
    (author == null ? 0 : author.hashCode);

  @override
  String toString() => 'NewsEmbedded[project=$project, author=$author]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (project != null) {
      json[r'project'] = project;
    }
    if (author != null) {
      json[r'author'] = author;
    }
    return json;
  }

  /// Returns a new [NewsEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static NewsEmbedded fromJson(Map<String, dynamic> json) => json == null
    ? null
    : NewsEmbedded(
        project: Project.fromJson(json[r'project']),
        author: User.fromJson(json[r'author']),
    );

  static List<NewsEmbedded> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <NewsEmbedded>[]
      : json.map((v) => NewsEmbedded.fromJson(v)).toList(growable: true == growable);

  static Map<String, NewsEmbedded> mapFromJson(Map<String, dynamic> json) {
    final map = <String, NewsEmbedded>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = NewsEmbedded.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of NewsEmbedded-objects as value to a dart map
  static Map<String, List<NewsEmbedded>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<NewsEmbedded>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = NewsEmbedded.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

