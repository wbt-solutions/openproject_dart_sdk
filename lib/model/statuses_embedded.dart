//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class StatusesEmbedded {
  /// Returns a new [StatusesEmbedded] instance.
  StatusesEmbedded({
    this.elements = const [],
  });

  List<Status> elements;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StatusesEmbedded &&
     other.elements == elements;

  @override
  int get hashCode =>
    (elements == null ? 0 : elements.hashCode);

  @override
  String toString() => 'StatusesEmbedded[elements=$elements]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (elements != null) {
      json[r'elements'] = elements;
    }
    return json;
  }

  /// Returns a new [StatusesEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static StatusesEmbedded fromJson(Map<String, dynamic> json) => json == null
    ? null
    : StatusesEmbedded(
        elements: Status.listFromJson(json[r'elements']),
    );

  static List<StatusesEmbedded> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <StatusesEmbedded>[]
      : json.map((dynamic value) => StatusesEmbedded.fromJson(value)).toList(growable: true == growable);

  static Map<String, StatusesEmbedded> mapFromJson(Map<String, dynamic> json) {
    final map = <String, StatusesEmbedded>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = StatusesEmbedded.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of StatusesEmbedded-objects as value to a dart map
  static Map<String, List<StatusesEmbedded>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<StatusesEmbedded>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = StatusesEmbedded.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

