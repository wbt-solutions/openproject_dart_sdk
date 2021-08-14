//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class ProjectLinks {
  /// Returns a new [ProjectLinks] instance.
  ProjectLinks({
    this.self,
    this.createWorkPackage,
    this.createWorkPackageImmediate,
    this.categories,
    this.types,
    this.versions,
    this.workPackages,
    this.memberships,
    this.delete,
    this.schema,
    this.parent,
  });

  Link self;

  Link createWorkPackage;

  Link createWorkPackageImmediate;

  Link categories;

  Link types;

  Link versions;

  Link workPackages;

  Link memberships;

  Link delete;

  Link schema;

  Link parent;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProjectLinks &&
     other.self == self &&
     other.createWorkPackage == createWorkPackage &&
     other.createWorkPackageImmediate == createWorkPackageImmediate &&
     other.categories == categories &&
     other.types == types &&
     other.versions == versions &&
     other.workPackages == workPackages &&
     other.memberships == memberships &&
     other.delete == delete &&
     other.schema == schema &&
     other.parent == parent;

  @override
  int get hashCode =>
    (self == null ? 0 : self.hashCode) +
    (createWorkPackage == null ? 0 : createWorkPackage.hashCode) +
    (createWorkPackageImmediate == null ? 0 : createWorkPackageImmediate.hashCode) +
    (categories == null ? 0 : categories.hashCode) +
    (types == null ? 0 : types.hashCode) +
    (versions == null ? 0 : versions.hashCode) +
    (workPackages == null ? 0 : workPackages.hashCode) +
    (memberships == null ? 0 : memberships.hashCode) +
    (delete == null ? 0 : delete.hashCode) +
    (schema == null ? 0 : schema.hashCode) +
    (parent == null ? 0 : parent.hashCode);

  @override
  String toString() => 'ProjectLinks[self=$self, createWorkPackage=$createWorkPackage, createWorkPackageImmediate=$createWorkPackageImmediate, categories=$categories, types=$types, versions=$versions, workPackages=$workPackages, memberships=$memberships, delete=$delete, schema=$schema, parent=$parent]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (self != null) {
      json[r'self'] = self;
    }
    if (createWorkPackage != null) {
      json[r'createWorkPackage'] = createWorkPackage;
    }
    if (createWorkPackageImmediate != null) {
      json[r'createWorkPackageImmediate'] = createWorkPackageImmediate;
    }
    if (categories != null) {
      json[r'categories'] = categories;
    }
    if (types != null) {
      json[r'types'] = types;
    }
    if (versions != null) {
      json[r'versions'] = versions;
    }
    if (workPackages != null) {
      json[r'workPackages'] = workPackages;
    }
    if (memberships != null) {
      json[r'memberships'] = memberships;
    }
    if (delete != null) {
      json[r'delete'] = delete;
    }
    if (schema != null) {
      json[r'schema'] = schema;
    }
    if (parent != null) {
      json[r'parent'] = parent;
    }
    return json;
  }

  /// Returns a new [ProjectLinks] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static ProjectLinks fromJson(Map<String, dynamic> json) => json == null
    ? null
    : ProjectLinks(
        self: Link.fromJson(json[r'self']),
        createWorkPackage: Link.fromJson(json[r'createWorkPackage']),
        createWorkPackageImmediate: Link.fromJson(json[r'createWorkPackageImmediate']),
        categories: Link.fromJson(json[r'categories']),
        types: Link.fromJson(json[r'types']),
        versions: Link.fromJson(json[r'versions']),
        workPackages: Link.fromJson(json[r'workPackages']),
        memberships: Link.fromJson(json[r'memberships']),
        delete: Link.fromJson(json[r'delete']),
        schema: Link.fromJson(json[r'schema']),
        parent: Link.fromJson(json[r'parent']),
    );

  static List<ProjectLinks> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <ProjectLinks>[]
      : json.map((dynamic value) => ProjectLinks.fromJson(value)).toList(growable: true == growable);

  static Map<String, ProjectLinks> mapFromJson(Map<String, dynamic> json) {
    final map = <String, ProjectLinks>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = ProjectLinks.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of ProjectLinks-objects as value to a dart map
  static Map<String, List<ProjectLinks>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<ProjectLinks>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = ProjectLinks.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

