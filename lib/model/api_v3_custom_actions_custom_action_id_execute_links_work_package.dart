//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class ApiV3CustomActionsCustomActionIdExecuteLinksWorkPackage {
  /// Returns a new [ApiV3CustomActionsCustomActionIdExecuteLinksWorkPackage] instance.
  ApiV3CustomActionsCustomActionIdExecuteLinksWorkPackage({
    this.href,
  });

  String href;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ApiV3CustomActionsCustomActionIdExecuteLinksWorkPackage &&
     other.href == href;

  @override
  int get hashCode =>
    (href == null ? 0 : href.hashCode);

  @override
  String toString() => 'ApiV3CustomActionsCustomActionIdExecuteLinksWorkPackage[href=$href]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (href != null) {
      json[r'href'] = href;
    }
    return json;
  }

  /// Returns a new [ApiV3CustomActionsCustomActionIdExecuteLinksWorkPackage] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ApiV3CustomActionsCustomActionIdExecuteLinksWorkPackage fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ApiV3CustomActionsCustomActionIdExecuteLinksWorkPackage(
        href: json[r'href'],
    );

  static List<ApiV3CustomActionsCustomActionIdExecuteLinksWorkPackage> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ApiV3CustomActionsCustomActionIdExecuteLinksWorkPackage>[]
      : json.map((dynamic value) => ApiV3CustomActionsCustomActionIdExecuteLinksWorkPackage.fromJson(value)).toList(growable: true == growable);

  static Map<String, ApiV3CustomActionsCustomActionIdExecuteLinksWorkPackage> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ApiV3CustomActionsCustomActionIdExecuteLinksWorkPackage>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = ApiV3CustomActionsCustomActionIdExecuteLinksWorkPackage.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ApiV3CustomActionsCustomActionIdExecuteLinksWorkPackage-objects as value to a dart map
  static Map<String, List<ApiV3CustomActionsCustomActionIdExecuteLinksWorkPackage>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ApiV3CustomActionsCustomActionIdExecuteLinksWorkPackage>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = ApiV3CustomActionsCustomActionIdExecuteLinksWorkPackage.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

