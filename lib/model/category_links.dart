//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class CategoryLinks {
  /// Returns a new [CategoryLinks] instance.
  CategoryLinks({
    this.self,
    this.project,
    this.defaultAssignee,
  });

  Link self;

  Link project;

  Link defaultAssignee;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CategoryLinks &&
     other.self == self &&
     other.project == project &&
     other.defaultAssignee == defaultAssignee;

  @override
  int get hashCode =>
    (self == null ? 0 : self.hashCode) +
    (project == null ? 0 : project.hashCode) +
    (defaultAssignee == null ? 0 : defaultAssignee.hashCode);

  @override
  String toString() => 'CategoryLinks[self=$self, project=$project, defaultAssignee=$defaultAssignee]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (self != null) {
      json[r'self'] = self;
    }
    if (project != null) {
      json[r'project'] = project;
    }
    if (defaultAssignee != null) {
      json[r'defaultAssignee'] = defaultAssignee;
    }
    return json;
  }

  /// Returns a new [CategoryLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static CategoryLinks fromJson(Map<String, dynamic> json) => json == null
    ? null
    : CategoryLinks(
        self: Link.fromJson(json[r'self']),
        project: Link.fromJson(json[r'project']),
        defaultAssignee: Link.fromJson(json[r'defaultAssignee']),
    );

  static List<CategoryLinks> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <CategoryLinks>[]
      : json.map((dynamic value) => CategoryLinks.fromJson(value)).toList(growable: true == growable);

  static Map<String, CategoryLinks> mapFromJson(Map<String, dynamic> json) {
    final map = <String, CategoryLinks>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = CategoryLinks.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of CategoryLinks-objects as value to a dart map
  static Map<String, List<CategoryLinks>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<CategoryLinks>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = CategoryLinks.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

