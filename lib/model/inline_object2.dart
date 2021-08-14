//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class InlineObject2 {
  /// Returns a new [InlineObject2] instance.
  InlineObject2({
    this.name,
  });

  String name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InlineObject2 &&
     other.name == name;

  @override
  int get hashCode =>
    (name == null ? 0 : name.hashCode);

  @override
  String toString() => 'InlineObject2[name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (name != null) {
      json[r'name'] = name;
    }
    return json;
  }

  /// Returns a new [InlineObject2] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static InlineObject2 fromJson(Map<String, dynamic> json) => json == null
    ? null
    : InlineObject2(
        name: json[r'name'],
    );

  static List<InlineObject2> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <InlineObject2>[]
      : json.map((dynamic value) => InlineObject2.fromJson(value)).toList(growable: true == growable);

  static Map<String, InlineObject2> mapFromJson(Map<String, dynamic> json) {
    final map = <String, InlineObject2>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = InlineObject2.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineObject2-objects as value to a dart map
  static Map<String, List<InlineObject2>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InlineObject2>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = InlineObject2.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

