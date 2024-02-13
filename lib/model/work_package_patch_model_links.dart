//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class WorkPackagePatchModelLinks {
  /// Returns a new [WorkPackagePatchModelLinks] instance.
  WorkPackagePatchModelLinks({
    this.assignee,
    this.budget,
    this.category,
    this.parent,
    this.priority,
    this.project,
    this.responsible,
    this.status,
    this.type,
    this.version,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  WorkPackageModelLinksAssignee? assignee;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  WorkPackageModelLinksBudget? budget;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  WorkPackageModelLinksCategory? category;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  WorkPackageModelLinksParent? parent;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  WorkPackageModelLinksPriority? priority;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  WorkPackageModelLinksProject? project;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  WorkPackageModelLinksResponsible? responsible;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  WorkPackageModelLinksStatus? status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  WorkPackageModelLinksType? type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  WorkPackageModelLinksVersion? version;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WorkPackagePatchModelLinks &&
    other.assignee == assignee &&
    other.budget == budget &&
    other.category == category &&
    other.parent == parent &&
    other.priority == priority &&
    other.project == project &&
    other.responsible == responsible &&
    other.status == status &&
    other.type == type &&
    other.version == version;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (assignee == null ? 0 : assignee!.hashCode) +
    (budget == null ? 0 : budget!.hashCode) +
    (category == null ? 0 : category!.hashCode) +
    (parent == null ? 0 : parent!.hashCode) +
    (priority == null ? 0 : priority!.hashCode) +
    (project == null ? 0 : project!.hashCode) +
    (responsible == null ? 0 : responsible!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (version == null ? 0 : version!.hashCode);

  @override
  String toString() => 'WorkPackagePatchModelLinks[assignee=$assignee, budget=$budget, category=$category, parent=$parent, priority=$priority, project=$project, responsible=$responsible, status=$status, type=$type, version=$version]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.assignee != null) {
      json[r'assignee'] = this.assignee;
    } else {
      json[r'assignee'] = null;
    }
    if (this.budget != null) {
      json[r'budget'] = this.budget;
    } else {
      json[r'budget'] = null;
    }
    if (this.category != null) {
      json[r'category'] = this.category;
    } else {
      json[r'category'] = null;
    }
    if (this.parent != null) {
      json[r'parent'] = this.parent;
    } else {
      json[r'parent'] = null;
    }
    if (this.priority != null) {
      json[r'priority'] = this.priority;
    } else {
      json[r'priority'] = null;
    }
    if (this.project != null) {
      json[r'project'] = this.project;
    } else {
      json[r'project'] = null;
    }
    if (this.responsible != null) {
      json[r'responsible'] = this.responsible;
    } else {
      json[r'responsible'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    return json;
  }

  /// Returns a new [WorkPackagePatchModelLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WorkPackagePatchModelLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WorkPackagePatchModelLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WorkPackagePatchModelLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WorkPackagePatchModelLinks(
        assignee: WorkPackageModelLinksAssignee.fromJson(json[r'assignee']),
        budget: WorkPackageModelLinksBudget.fromJson(json[r'budget']),
        category: WorkPackageModelLinksCategory.fromJson(json[r'category']),
        parent: WorkPackageModelLinksParent.fromJson(json[r'parent']),
        priority: WorkPackageModelLinksPriority.fromJson(json[r'priority']),
        project: WorkPackageModelLinksProject.fromJson(json[r'project']),
        responsible: WorkPackageModelLinksResponsible.fromJson(json[r'responsible']),
        status: WorkPackageModelLinksStatus.fromJson(json[r'status']),
        type: WorkPackageModelLinksType.fromJson(json[r'type']),
        version: WorkPackageModelLinksVersion.fromJson(json[r'version']),
      );
    }
    return null;
  }

  static List<WorkPackagePatchModelLinks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WorkPackagePatchModelLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WorkPackagePatchModelLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WorkPackagePatchModelLinks> mapFromJson(dynamic json) {
    final map = <String, WorkPackagePatchModelLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WorkPackagePatchModelLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WorkPackagePatchModelLinks-objects as value to a dart map
  static Map<String, List<WorkPackagePatchModelLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WorkPackagePatchModelLinks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WorkPackagePatchModelLinks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

