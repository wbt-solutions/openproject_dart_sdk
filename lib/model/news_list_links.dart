//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class NewsListLinks {
  /// Returns a new [NewsListLinks] instance.
  NewsListLinks({
    this.self,
    this.jumpTo,
    this.changeSize,
    this.nextByOffset,
  });

  Link self;

  Link jumpTo;

  Link changeSize;

  Link nextByOffset;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NewsListLinks &&
     other.self == self &&
     other.jumpTo == jumpTo &&
     other.changeSize == changeSize &&
     other.nextByOffset == nextByOffset;

  @override
  int get hashCode =>
    (self == null ? 0 : self.hashCode) +
    (jumpTo == null ? 0 : jumpTo.hashCode) +
    (changeSize == null ? 0 : changeSize.hashCode) +
    (nextByOffset == null ? 0 : nextByOffset.hashCode);

  @override
  String toString() => 'NewsListLinks[self=$self, jumpTo=$jumpTo, changeSize=$changeSize, nextByOffset=$nextByOffset]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (self != null) {
      json[r'self'] = self;
    }
    if (jumpTo != null) {
      json[r'jumpTo'] = jumpTo;
    }
    if (changeSize != null) {
      json[r'changeSize'] = changeSize;
    }
    if (nextByOffset != null) {
      json[r'nextByOffset'] = nextByOffset;
    }
    return json;
  }

  /// Returns a new [NewsListLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static NewsListLinks fromJson(Map<String, dynamic> json) => json == null
    ? null
    : NewsListLinks(
        self: Link.fromJson(json[r'self']),
        jumpTo: Link.fromJson(json[r'jumpTo']),
        changeSize: Link.fromJson(json[r'changeSize']),
        nextByOffset: Link.fromJson(json[r'nextByOffset']),
    );

  static List<NewsListLinks> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <NewsListLinks>[]
      : json.map((v) => NewsListLinks.fromJson(v)).toList(growable: true == growable);

  static Map<String, NewsListLinks> mapFromJson(Map<String, dynamic> json) {
    final map = <String, NewsListLinks>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = NewsListLinks.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of NewsListLinks-objects as value to a dart map
  static Map<String, List<NewsListLinks>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<NewsListLinks>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = NewsListLinks.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

