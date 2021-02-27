//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class NewsListEmbedded {
  /// Returns a new [NewsListEmbedded] instance.
  NewsListEmbedded({
    this.elements = const [],
  });

  List<News> elements;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NewsListEmbedded &&
     other.elements == elements;

  @override
  int get hashCode =>
    (elements == null ? 0 : elements.hashCode);

  @override
  String toString() => 'NewsListEmbedded[elements=$elements]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (elements != null) {
      json[r'elements'] = elements;
    }
    return json;
  }

  /// Returns a new [NewsListEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static NewsListEmbedded fromJson(Map<String, dynamic> json) => json == null
    ? null
    : NewsListEmbedded(
        elements: News.listFromJson(json[r'elements']),
    );

  static List<NewsListEmbedded> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <NewsListEmbedded>[]
      : json.map((v) => NewsListEmbedded.fromJson(v)).toList(growable: true == growable);

  static Map<String, NewsListEmbedded> mapFromJson(Map<String, dynamic> json) {
    final map = <String, NewsListEmbedded>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = NewsListEmbedded.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of NewsListEmbedded-objects as value to a dart map
  static Map<String, List<NewsListEmbedded>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<NewsListEmbedded>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = NewsListEmbedded.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

