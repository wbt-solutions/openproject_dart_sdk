//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class WorkPackages {
  /// Returns a new [WorkPackages] instance.
  WorkPackages({
    this.total,
    this.count,
    this.embedded,
  });

  int total;

  int count;

  WorkPackagesEmbedded embedded;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WorkPackages &&
     other.total == total &&
     other.count == count &&
     other.embedded == embedded;

  @override
  int get hashCode =>
    (total == null ? 0 : total.hashCode) +
    (count == null ? 0 : count.hashCode) +
    (embedded == null ? 0 : embedded.hashCode);

  @override
  String toString() => 'WorkPackages[total=$total, count=$count, embedded=$embedded]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (total != null) {
      json[r'total'] = total;
    }
    if (count != null) {
      json[r'count'] = count;
    }
    if (embedded != null) {
      json[r'_embedded'] = embedded;
    }
    return json;
  }

  /// Returns a new [WorkPackages] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WorkPackages fromJson(Map<String, dynamic> json) => json == null
    ? null
    : WorkPackages(
        total: json[r'total'],
        count: json[r'count'],
        embedded: WorkPackagesEmbedded.fromJson(json[r'_embedded']),
    );

  static List<WorkPackages> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WorkPackages>[]
      : json.map((v) => WorkPackages.fromJson(v)).toList(growable: true == growable);

  static Map<String, WorkPackages> mapFromJson(Map<String, dynamic> json) {
    final map = <String, WorkPackages>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = WorkPackages.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of WorkPackages-objects as value to a dart map
  static Map<String, List<WorkPackages>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<WorkPackages>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = WorkPackages.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

