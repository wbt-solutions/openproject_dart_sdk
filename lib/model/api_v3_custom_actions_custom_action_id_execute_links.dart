//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ApiV3CustomActionsCustomActionIdExecuteLinks {
  /// Returns a new [ApiV3CustomActionsCustomActionIdExecuteLinks] instance.
  ApiV3CustomActionsCustomActionIdExecuteLinks({
    this.workPackage,
  });

  ApiV3CustomActionsCustomActionIdExecuteLinksWorkPackage workPackage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ApiV3CustomActionsCustomActionIdExecuteLinks &&
     other.workPackage == workPackage;

  @override
  int get hashCode =>
    (workPackage == null ? 0 : workPackage.hashCode);

  @override
  String toString() => 'ApiV3CustomActionsCustomActionIdExecuteLinks[workPackage=$workPackage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (workPackage != null) {
      json[r'workPackage'] = workPackage;
    }
    return json;
  }

  /// Returns a new [ApiV3CustomActionsCustomActionIdExecuteLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ApiV3CustomActionsCustomActionIdExecuteLinks fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ApiV3CustomActionsCustomActionIdExecuteLinks(
        workPackage: ApiV3CustomActionsCustomActionIdExecuteLinksWorkPackage.fromJson(json[r'workPackage']),
    );

  static List<ApiV3CustomActionsCustomActionIdExecuteLinks> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ApiV3CustomActionsCustomActionIdExecuteLinks>[]
      : json.map((v) => ApiV3CustomActionsCustomActionIdExecuteLinks.fromJson(v)).toList(growable: true == growable);

  static Map<String, ApiV3CustomActionsCustomActionIdExecuteLinks> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ApiV3CustomActionsCustomActionIdExecuteLinks>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = ApiV3CustomActionsCustomActionIdExecuteLinks.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of ApiV3CustomActionsCustomActionIdExecuteLinks-objects as value to a dart map
  static Map<String, List<ApiV3CustomActionsCustomActionIdExecuteLinks>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ApiV3CustomActionsCustomActionIdExecuteLinks>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = ApiV3CustomActionsCustomActionIdExecuteLinks.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

