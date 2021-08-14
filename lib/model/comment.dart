//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class Comment {
  /// Returns a new [Comment] instance.
  Comment({
    this.comment,
  });

  Description comment;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Comment &&
     other.comment == comment;

  @override
  int get hashCode =>
    (comment == null ? 0 : comment.hashCode);

  @override
  String toString() => 'Comment[comment=$comment]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (comment != null) {
      json[r'comment'] = comment;
    }
    return json;
  }

  /// Returns a new [Comment] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static Comment fromJson(Map<String, dynamic> json) => json == null
    ? null
    : Comment(
        comment: json[r'comment'],
    );

  static List<Comment> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <Comment>[]
      : json.map((dynamic value) => Comment.fromJson(value)).toList(growable: true == growable);

  static Map<String, Comment> mapFromJson(Map<String, dynamic> json) {
    final map = <String, Comment>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = Comment.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of Comment-objects as value to a dart map
  static Map<String, List<Comment>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<Comment>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = Comment.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

