//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class TimeEntryModelLinks {
  /// Returns a new [TimeEntryModelLinks] instance.
  TimeEntryModelLinks({
    required this.self,
    this.updateImmediately,
    this.update,
    this.delete,
    this.schema,
    required this.project,
    this.workPackage,
    required this.user,
    required this.activity,
  });

  TimeEntryModelLinksSelf self;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TimeEntryModelLinksUpdateImmediately? updateImmediately;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TimeEntryModelLinksUpdate? update;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TimeEntryModelLinksDelete? delete;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TimeEntryModelLinksSchema? schema;

  TimeEntryModelLinksProject project;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TimeEntryModelLinksWorkPackage? workPackage;

  TimeEntryModelLinksUser user;

  TimeEntryModelLinksActivity activity;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TimeEntryModelLinks &&
    other.self == self &&
    other.updateImmediately == updateImmediately &&
    other.update == update &&
    other.delete == delete &&
    other.schema == schema &&
    other.project == project &&
    other.workPackage == workPackage &&
    other.user == user &&
    other.activity == activity;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (self.hashCode) +
    (updateImmediately == null ? 0 : updateImmediately!.hashCode) +
    (update == null ? 0 : update!.hashCode) +
    (delete == null ? 0 : delete!.hashCode) +
    (schema == null ? 0 : schema!.hashCode) +
    (project.hashCode) +
    (workPackage == null ? 0 : workPackage!.hashCode) +
    (user.hashCode) +
    (activity.hashCode);

  @override
  String toString() => 'TimeEntryModelLinks[self=$self, updateImmediately=$updateImmediately, update=$update, delete=$delete, schema=$schema, project=$project, workPackage=$workPackage, user=$user, activity=$activity]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'self'] = this.self;
    if (this.updateImmediately != null) {
      json[r'updateImmediately'] = this.updateImmediately;
    } else {
      json[r'updateImmediately'] = null;
    }
    if (this.update != null) {
      json[r'update'] = this.update;
    } else {
      json[r'update'] = null;
    }
    if (this.delete != null) {
      json[r'delete'] = this.delete;
    } else {
      json[r'delete'] = null;
    }
    if (this.schema != null) {
      json[r'schema'] = this.schema;
    } else {
      json[r'schema'] = null;
    }
      json[r'project'] = this.project;
    if (this.workPackage != null) {
      json[r'workPackage'] = this.workPackage;
    } else {
      json[r'workPackage'] = null;
    }
      json[r'user'] = this.user;
      json[r'activity'] = this.activity;
    return json;
  }

  /// Returns a new [TimeEntryModelLinks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TimeEntryModelLinks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TimeEntryModelLinks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TimeEntryModelLinks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TimeEntryModelLinks(
        self: TimeEntryModelLinksSelf.fromJson(json[r'self'])!,
        updateImmediately: TimeEntryModelLinksUpdateImmediately.fromJson(json[r'updateImmediately']),
        update: TimeEntryModelLinksUpdate.fromJson(json[r'update']),
        delete: TimeEntryModelLinksDelete.fromJson(json[r'delete']),
        schema: TimeEntryModelLinksSchema.fromJson(json[r'schema']),
        project: TimeEntryModelLinksProject.fromJson(json[r'project'])!,
        workPackage: TimeEntryModelLinksWorkPackage.fromJson(json[r'workPackage']),
        user: TimeEntryModelLinksUser.fromJson(json[r'user'])!,
        activity: TimeEntryModelLinksActivity.fromJson(json[r'activity'])!,
      );
    }
    return null;
  }

  static List<TimeEntryModelLinks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TimeEntryModelLinks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TimeEntryModelLinks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TimeEntryModelLinks> mapFromJson(dynamic json) {
    final map = <String, TimeEntryModelLinks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TimeEntryModelLinks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TimeEntryModelLinks-objects as value to a dart map
  static Map<String, List<TimeEntryModelLinks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TimeEntryModelLinks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TimeEntryModelLinks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'self',
    'project',
    'user',
    'activity',
  };
}

