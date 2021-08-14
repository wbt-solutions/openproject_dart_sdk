//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class WorkPackagesEmbedded {
  /// Returns a new [WorkPackagesEmbedded] instance.
  WorkPackagesEmbedded({
    this.elements = const [],
  });

  List<WorkPackage> elements;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WorkPackagesEmbedded &&
     other.elements == elements;

  @override
  int get hashCode =>
    (elements == null ? 0 : elements.hashCode);

  @override
  String toString() => 'WorkPackagesEmbedded[elements=$elements]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (elements != null) {
      json[r'elements'] = elements;
    }
    return json;
  }

  /// Returns a new [WorkPackagesEmbedded] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WorkPackagesEmbedded fromJson(Map<String, dynamic> json) => json == null
    ? null
    : WorkPackagesEmbedded(
        elements: WorkPackage.listFromJson(json[r'elements']),
    );

  static List<WorkPackagesEmbedded> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WorkPackagesEmbedded>[]
      : json.map((dynamic value) => WorkPackagesEmbedded.fromJson(value)).toList(growable: true == growable);

  static Map<String, WorkPackagesEmbedded> mapFromJson(Map<String, dynamic> json) {
    final map = <String, WorkPackagesEmbedded>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = WorkPackagesEmbedded.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of WorkPackagesEmbedded-objects as value to a dart map
  static Map<String, List<WorkPackagesEmbedded>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<WorkPackagesEmbedded>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = WorkPackagesEmbedded.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

