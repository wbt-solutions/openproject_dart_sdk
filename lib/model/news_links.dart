//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class NewsLinks {
  /// Returns a new [NewsLinks] instance.
  NewsLinks({
    this.self,
    this.project,
    this.author,
  });

  Link self;

  Link project;

  Link author;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NewsLinks &&
     other.self == self &&
     other.project == project &&
     other.author == author;

  @override
  int get hashCode =>
    (self == null ? 0 : self.hashCode) +
    (project == null ? 0 : project.hashCode) +
    (author == null ? 0 : author.hashCode);

  @override
  String toString() => 'NewsLinks[self=$self, project=$project, author=$author]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (self != null) {
      json[r'self'] = self;
    }
    if (project != null) {
      json[r'project'] = project;
    }
    if (author != null) {
      json[r'author'] = author;
    }
    return json;
  }

  /// Returns a new [NewsLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static NewsLinks fromJson(Map<String, dynamic> json) => json == null
    ? null
    : NewsLinks(
        self: Link.fromJson(json[r'self']),
        project: Link.fromJson(json[r'project']),
        author: Link.fromJson(json[r'author']),
    );

  static List<NewsLinks> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <NewsLinks>[]
      : json.map((dynamic value) => NewsLinks.fromJson(value)).toList(growable: true == growable);

  static Map<String, NewsLinks> mapFromJson(Map<String, dynamic> json) {
    final map = <String, NewsLinks>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = NewsLinks.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of NewsLinks-objects as value to a dart map
  static Map<String, List<NewsLinks>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<NewsLinks>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = NewsLinks.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

