//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Link? self;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Link? createWorkPackage;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Link? createWorkPackageImmediate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Link? categories;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Link? types;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Link? versions;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Link? workPackages;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Link? memberships;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Link? delete;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Link? schema;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Link? parent;

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
    // ignore: unnecessary_parenthesis
    (self == null ? 0 : self!.hashCode) +
    (createWorkPackage == null ? 0 : createWorkPackage!.hashCode) +
    (createWorkPackageImmediate == null ? 0 : createWorkPackageImmediate!.hashCode) +
    (categories == null ? 0 : categories!.hashCode) +
    (types == null ? 0 : types!.hashCode) +
    (versions == null ? 0 : versions!.hashCode) +
    (workPackages == null ? 0 : workPackages!.hashCode) +
    (memberships == null ? 0 : memberships!.hashCode) +
    (delete == null ? 0 : delete!.hashCode) +
    (schema == null ? 0 : schema!.hashCode) +
    (parent == null ? 0 : parent!.hashCode);

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
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProjectLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProjectLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProjectLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProjectLinks(
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
    }
    return null;
  }

  static List<ProjectLinks>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProjectLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProjectLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProjectLinks> mapFromJson(dynamic json) {
    final map = <String, ProjectLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProjectLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProjectLinks-objects as value to a dart map
  static Map<String, List<ProjectLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProjectLinks>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProjectLinks.listFromJson(entry.value, growable: growable,);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

