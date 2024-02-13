//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class ProjectModelLinks {
  /// Returns a new [ProjectModelLinks] instance.
  ProjectModelLinks({
    this.update,
    this.updateImmediately,
    this.delete,
    this.createWorkPackage,
    this.createWorkPackageImmediately,
    required this.self,
    required this.categories,
    required this.types,
    required this.versions,
    required this.memberships,
    required this.workPackages,
    this.parent,
    this.status,
    this.storages = const [],
    this.projectStorages,
    this.ancestors = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ProjectModelLinksUpdate? update;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ProjectModelLinksUpdateImmediately? updateImmediately;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ProjectModelLinksDelete? delete;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ProjectModelLinksCreateWorkPackage? createWorkPackage;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ProjectModelLinksCreateWorkPackageImmediately? createWorkPackageImmediately;

  ProjectModelLinksSelf self;

  ProjectModelLinksCategories categories;

  ProjectModelLinksTypes types;

  ProjectModelLinksVersions versions;

  ProjectModelLinksMemberships memberships;

  ProjectModelLinksWorkPackages workPackages;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ProjectModelLinksParent? parent;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ProjectModelLinksStatus? status;

  List<ProjectModelLinksStoragesInner> storages;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ProjectModelLinksProjectStorages? projectStorages;

  List<ProjectModelLinksAncestorsInner> ancestors;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProjectModelLinks &&
    other.update == update &&
    other.updateImmediately == updateImmediately &&
    other.delete == delete &&
    other.createWorkPackage == createWorkPackage &&
    other.createWorkPackageImmediately == createWorkPackageImmediately &&
    other.self == self &&
    other.categories == categories &&
    other.types == types &&
    other.versions == versions &&
    other.memberships == memberships &&
    other.workPackages == workPackages &&
    other.parent == parent &&
    other.status == status &&
    _deepEquality.equals(other.storages, storages) &&
    other.projectStorages == projectStorages &&
    _deepEquality.equals(other.ancestors, ancestors);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (update == null ? 0 : update!.hashCode) +
    (updateImmediately == null ? 0 : updateImmediately!.hashCode) +
    (delete == null ? 0 : delete!.hashCode) +
    (createWorkPackage == null ? 0 : createWorkPackage!.hashCode) +
    (createWorkPackageImmediately == null ? 0 : createWorkPackageImmediately!.hashCode) +
    (self.hashCode) +
    (categories.hashCode) +
    (types.hashCode) +
    (versions.hashCode) +
    (memberships.hashCode) +
    (workPackages.hashCode) +
    (parent == null ? 0 : parent!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (storages.hashCode) +
    (projectStorages == null ? 0 : projectStorages!.hashCode) +
    (ancestors.hashCode);

  @override
  String toString() => 'ProjectModelLinks[update=$update, updateImmediately=$updateImmediately, delete=$delete, createWorkPackage=$createWorkPackage, createWorkPackageImmediately=$createWorkPackageImmediately, self=$self, categories=$categories, types=$types, versions=$versions, memberships=$memberships, workPackages=$workPackages, parent=$parent, status=$status, storages=$storages, projectStorages=$projectStorages, ancestors=$ancestors]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.update != null) {
      json[r'update'] = this.update;
    } else {
      json[r'update'] = null;
    }
    if (this.updateImmediately != null) {
      json[r'updateImmediately'] = this.updateImmediately;
    } else {
      json[r'updateImmediately'] = null;
    }
    if (this.delete != null) {
      json[r'delete'] = this.delete;
    } else {
      json[r'delete'] = null;
    }
    if (this.createWorkPackage != null) {
      json[r'createWorkPackage'] = this.createWorkPackage;
    } else {
      json[r'createWorkPackage'] = null;
    }
    if (this.createWorkPackageImmediately != null) {
      json[r'createWorkPackageImmediately'] = this.createWorkPackageImmediately;
    } else {
      json[r'createWorkPackageImmediately'] = null;
    }
      json[r'self'] = this.self;
      json[r'categories'] = this.categories;
      json[r'types'] = this.types;
      json[r'versions'] = this.versions;
      json[r'memberships'] = this.memberships;
      json[r'workPackages'] = this.workPackages;
    if (this.parent != null) {
      json[r'parent'] = this.parent;
    } else {
      json[r'parent'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
      json[r'storages'] = this.storages;
    if (this.projectStorages != null) {
      json[r'projectStorages'] = this.projectStorages;
    } else {
      json[r'projectStorages'] = null;
    }
      json[r'ancestors'] = this.ancestors;
    return json;
  }

  /// Returns a new [ProjectModelLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProjectModelLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProjectModelLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProjectModelLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProjectModelLinks(
        update: ProjectModelLinksUpdate.fromJson(json[r'update']),
        updateImmediately: ProjectModelLinksUpdateImmediately.fromJson(json[r'updateImmediately']),
        delete: ProjectModelLinksDelete.fromJson(json[r'delete']),
        createWorkPackage: ProjectModelLinksCreateWorkPackage.fromJson(json[r'createWorkPackage']),
        createWorkPackageImmediately: ProjectModelLinksCreateWorkPackageImmediately.fromJson(json[r'createWorkPackageImmediately']),
        self: ProjectModelLinksSelf.fromJson(json[r'self'])!,
        categories: ProjectModelLinksCategories.fromJson(json[r'categories'])!,
        types: ProjectModelLinksTypes.fromJson(json[r'types'])!,
        versions: ProjectModelLinksVersions.fromJson(json[r'versions'])!,
        memberships: ProjectModelLinksMemberships.fromJson(json[r'memberships'])!,
        workPackages: ProjectModelLinksWorkPackages.fromJson(json[r'workPackages'])!,
        parent: ProjectModelLinksParent.fromJson(json[r'parent']),
        status: ProjectModelLinksStatus.fromJson(json[r'status']),
        storages: ProjectModelLinksStoragesInner.listFromJson(json[r'storages']),
        projectStorages: ProjectModelLinksProjectStorages.fromJson(json[r'projectStorages']),
        ancestors: ProjectModelLinksAncestorsInner.listFromJson(json[r'ancestors']),
      );
    }
    return null;
  }

  static List<ProjectModelLinks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProjectModelLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectModelLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProjectModelLinks> mapFromJson(dynamic json) {
    final map = <String, ProjectModelLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProjectModelLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProjectModelLinks-objects as value to a dart map
  static Map<String, List<ProjectModelLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProjectModelLinks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProjectModelLinks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'self',
    'categories',
    'types',
    'versions',
    'memberships',
    'workPackages',
  };
}

