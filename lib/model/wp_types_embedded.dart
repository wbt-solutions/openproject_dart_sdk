//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class WPTypesEmbedded {
  /// Returns a new [WPTypesEmbedded] instance.
  WPTypesEmbedded({
    this.elements = const [],
  });

  List<WPType> elements;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WPTypesEmbedded &&
     other.elements == elements;

  @override
  int get hashCode =>
    (elements == null ? 0 : elements.hashCode);

  @override
  String toString() => 'WPTypesEmbedded[elements=$elements]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (elements != null) {
      json[r'elements'] = elements;
    }
    return json;
  }

  /// Returns a new [WPTypesEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WPTypesEmbedded fromJson(Map<String, dynamic> json) => json == null
    ? null
    : WPTypesEmbedded(
        elements: WPType.listFromJson(json[r'elements']),
    );

  static List<WPTypesEmbedded> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WPTypesEmbedded>[]
      : json.map((dynamic value) => WPTypesEmbedded.fromJson(value)).toList(growable: true == growable);

  static Map<String, WPTypesEmbedded> mapFromJson(Map<String, dynamic> json) {
    final map = <String, WPTypesEmbedded>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = WPTypesEmbedded.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of WPTypesEmbedded-objects as value to a dart map
  static Map<String, List<WPTypesEmbedded>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<WPTypesEmbedded>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = WPTypesEmbedded.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

