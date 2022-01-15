//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class WorkPackagePatch {
  /// Returns a new [WorkPackagePatch] instance.
  WorkPackagePatch({
    this.lockVersion,
    this.percentageDone,
    this.subject,
    this.description,
    this.startDate,
    this.dueDate,
    this.estimatedTime,
    this.links,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? lockVersion;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? percentageDone;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subject;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Description? description;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? startDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? dueDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? estimatedTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  WorkPackageLinks? links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WorkPackagePatch &&
     other.lockVersion == lockVersion &&
     other.percentageDone == percentageDone &&
     other.subject == subject &&
     other.description == description &&
     other.startDate == startDate &&
     other.dueDate == dueDate &&
     other.estimatedTime == estimatedTime &&
     other.links == links;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (lockVersion == null ? 0 : lockVersion!.hashCode) +
    (percentageDone == null ? 0 : percentageDone!.hashCode) +
    (subject == null ? 0 : subject!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (startDate == null ? 0 : startDate!.hashCode) +
    (dueDate == null ? 0 : dueDate!.hashCode) +
    (estimatedTime == null ? 0 : estimatedTime!.hashCode) +
    (links == null ? 0 : links!.hashCode);

  @override
  String toString() => 'WorkPackagePatch[lockVersion=$lockVersion, percentageDone=$percentageDone, subject=$subject, description=$description, startDate=$startDate, dueDate=$dueDate, estimatedTime=$estimatedTime, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (lockVersion != null) {
      json[r'lockVersion'] = lockVersion;
    }
    if (percentageDone != null) {
      json[r'percentageDone'] = percentageDone;
    }
    if (subject != null) {
      json[r'subject'] = subject;
    }
    if (description != null) {
      json[r'description'] = description;
    }
    if (startDate != null) {
      json[r'startDate'] = startDate!.toUtc().toIso8601String();
    }
    if (dueDate != null) {
      json[r'dueDate'] = dueDate!.toUtc().toIso8601String();
    }
    if (estimatedTime != null) {
      json[r'estimatedTime'] = estimatedTime;
    }
    if (links != null) {
      json[r'_links'] = links;
    }
    return json;
  }

  /// Returns a new [WorkPackagePatch] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WorkPackagePatch? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WorkPackagePatch[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WorkPackagePatch[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WorkPackagePatch(
        lockVersion: mapValueOfType<int>(json, r'lockVersion'),
        percentageDone: mapValueOfType<int>(json, r'percentageDone'),
        subject: mapValueOfType<String>(json, r'subject'),
        description: Description.fromJson(json[r'description']),
        startDate: mapDateTime(json, r'startDate', ''),
        dueDate: mapDateTime(json, r'dueDate', ''),
        estimatedTime: mapValueOfType<String>(json, r'estimatedTime'),
        links: WorkPackageLinks.fromJson(json[r'_links']),
      );
    }
    return null;
  }

  static List<WorkPackagePatch>? listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WorkPackagePatch>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WorkPackagePatch.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WorkPackagePatch> mapFromJson(dynamic json) {
    final map = <String, WorkPackagePatch>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WorkPackagePatch.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WorkPackagePatch-objects as value to a dart map
  static Map<String, List<WorkPackagePatch>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WorkPackagePatch>>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WorkPackagePatch.listFromJson(entry.value, growable: growable,);
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

