//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class NotificationModelEmbedded {
  /// Returns a new [NotificationModelEmbedded] instance.
  NotificationModelEmbedded({
    this.actor,
    required this.project,
    this.activity,
    required this.resource,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  UserModel? actor;

  ProjectModel project;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ActivityModel? activity;

  NotificationModelEmbeddedResource resource;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NotificationModelEmbedded &&
    other.actor == actor &&
    other.project == project &&
    other.activity == activity &&
    other.resource == resource;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (actor == null ? 0 : actor!.hashCode) +
    (project.hashCode) +
    (activity == null ? 0 : activity!.hashCode) +
    (resource.hashCode);

  @override
  String toString() => 'NotificationModelEmbedded[actor=$actor, project=$project, activity=$activity, resource=$resource]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.actor != null) {
      json[r'actor'] = this.actor;
    } else {
      json[r'actor'] = null;
    }
      json[r'project'] = this.project;
    if (this.activity != null) {
      json[r'activity'] = this.activity;
    } else {
      json[r'activity'] = null;
    }
      json[r'resource'] = this.resource;
    return json;
  }

  /// Returns a new [NotificationModelEmbedded] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NotificationModelEmbedded? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "NotificationModelEmbedded[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "NotificationModelEmbedded[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NotificationModelEmbedded(
        actor: UserModel.fromJson(json[r'actor']),
        project: ProjectModel.fromJson(json[r'project'])!,
        activity: ActivityModel.fromJson(json[r'activity']),
        resource: NotificationModelEmbeddedResource.fromJson(json[r'resource'])!,
      );
    }
    return null;
  }

  static List<NotificationModelEmbedded> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NotificationModelEmbedded>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NotificationModelEmbedded.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NotificationModelEmbedded> mapFromJson(dynamic json) {
    final map = <String, NotificationModelEmbedded>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NotificationModelEmbedded.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NotificationModelEmbedded-objects as value to a dart map
  static Map<String, List<NotificationModelEmbedded>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NotificationModelEmbedded>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NotificationModelEmbedded.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'project',
    'resource',
  };
}

