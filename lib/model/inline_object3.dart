//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class InlineObject3 {
  /// Returns a new [InlineObject3] instance.
  InlineObject3({
    this.accessibilityMode,
    this.timeZone,
  });

  bool accessibilityMode;

  String timeZone;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InlineObject3 &&
     other.accessibilityMode == accessibilityMode &&
     other.timeZone == timeZone;

  @override
  int get hashCode =>
    (accessibilityMode == null ? 0 : accessibilityMode.hashCode) +
    (timeZone == null ? 0 : timeZone.hashCode);

  @override
  String toString() => 'InlineObject3[accessibilityMode=$accessibilityMode, timeZone=$timeZone]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (accessibilityMode != null) {
      json[r'accessibilityMode'] = accessibilityMode;
    }
    if (timeZone != null) {
      json[r'timeZone'] = timeZone;
    }
    return json;
  }

  /// Returns a new [InlineObject3] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static InlineObject3 fromJson(Map<String, dynamic> json) => json == null
    ? null
    : InlineObject3(
        accessibilityMode: json[r'accessibilityMode'],
        timeZone: json[r'timeZone'],
    );

  static List<InlineObject3> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <InlineObject3>[]
      : json.map((dynamic value) => InlineObject3.fromJson(value)).toList(growable: true == growable);

  static Map<String, InlineObject3> mapFromJson(Map<String, dynamic> json) {
    final map = <String, InlineObject3>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = InlineObject3.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of InlineObject3-objects as value to a dart map
  static Map<String, List<InlineObject3>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<InlineObject3>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = InlineObject3.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

