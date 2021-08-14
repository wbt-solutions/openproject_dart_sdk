//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class UsersEmbedded {
  /// Returns a new [UsersEmbedded] instance.
  UsersEmbedded({
    this.elements = const [],
  });

  List<User> elements;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UsersEmbedded &&
     other.elements == elements;

  @override
  int get hashCode =>
    (elements == null ? 0 : elements.hashCode);

  @override
  String toString() => 'UsersEmbedded[elements=$elements]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (elements != null) {
      json[r'elements'] = elements;
    }
    return json;
  }

  /// Returns a new [UsersEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static UsersEmbedded fromJson(Map<String, dynamic> json) => json == null
    ? null
    : UsersEmbedded(
        elements: User.listFromJson(json[r'elements']),
    );

  static List<UsersEmbedded> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <UsersEmbedded>[]
      : json.map((dynamic value) => UsersEmbedded.fromJson(value)).toList(growable: true == growable);

  static Map<String, UsersEmbedded> mapFromJson(Map<String, dynamic> json) {
    final map = <String, UsersEmbedded>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = UsersEmbedded.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of UsersEmbedded-objects as value to a dart map
  static Map<String, List<UsersEmbedded>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<UsersEmbedded>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = UsersEmbedded.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

