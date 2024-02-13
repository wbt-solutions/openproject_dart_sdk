//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class WorkPackagePatchModel {
  /// Returns a new [WorkPackagePatchModel] instance.
  WorkPackagePatchModel({
    required this.lockVersion,
    this.subject,
    this.description,
    this.scheduleManually,
    this.startDate,
    this.dueDate,
    this.date,
    this.estimatedTime,
    this.ignoreNonWorkingDays,
    this.spentTime,
    this.percentageDone,
    this.createdAt,
    this.updatedAt,
    this.links,
  });

  /// The version of the item as used for optimistic locking
  int lockVersion;

  /// Work package subject
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
  WorkPackageModelDescription? description;

  /// If false (default) schedule automatically.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? scheduleManually;

  /// Scheduled beginning of a work package
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? startDate;

  /// Scheduled end of a work package
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? dueDate;

  /// Date on which a milestone is achieved
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? date;

  /// Time a work package likely needs to be completed excluding its descendants
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? estimatedTime;

  /// **(NOT IMPLEMENTED)** When scheduling, whether or not to ignore the non working days being defined. A work package with the flag set to true will be allowed to be scheduled to a non working day.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? ignoreNonWorkingDays;

  /// The time booked for this work package by users working on it  # Conditions  **Permission** view time entries
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? spentTime;

  /// Amount of total completion for a work package
  ///
  /// Maximum value: 100
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? percentageDone;

  /// Time of creation
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  /// Time of the most recent change to the work package
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  WorkPackagePatchModelLinks? links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WorkPackagePatchModel &&
    other.lockVersion == lockVersion &&
    other.subject == subject &&
    other.description == description &&
    other.scheduleManually == scheduleManually &&
    other.startDate == startDate &&
    other.dueDate == dueDate &&
    other.date == date &&
    other.estimatedTime == estimatedTime &&
    other.ignoreNonWorkingDays == ignoreNonWorkingDays &&
    other.spentTime == spentTime &&
    other.percentageDone == percentageDone &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt &&
    other.links == links;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (lockVersion.hashCode) +
    (subject == null ? 0 : subject!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (scheduleManually == null ? 0 : scheduleManually!.hashCode) +
    (startDate == null ? 0 : startDate!.hashCode) +
    (dueDate == null ? 0 : dueDate!.hashCode) +
    (date == null ? 0 : date!.hashCode) +
    (estimatedTime == null ? 0 : estimatedTime!.hashCode) +
    (ignoreNonWorkingDays == null ? 0 : ignoreNonWorkingDays!.hashCode) +
    (spentTime == null ? 0 : spentTime!.hashCode) +
    (percentageDone == null ? 0 : percentageDone!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (links == null ? 0 : links!.hashCode);

  @override
  String toString() => 'WorkPackagePatchModel[lockVersion=$lockVersion, subject=$subject, description=$description, scheduleManually=$scheduleManually, startDate=$startDate, dueDate=$dueDate, date=$date, estimatedTime=$estimatedTime, ignoreNonWorkingDays=$ignoreNonWorkingDays, spentTime=$spentTime, percentageDone=$percentageDone, createdAt=$createdAt, updatedAt=$updatedAt, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'lockVersion'] = this.lockVersion;
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.scheduleManually != null) {
      json[r'scheduleManually'] = this.scheduleManually;
    } else {
      json[r'scheduleManually'] = null;
    }
    if (this.startDate != null) {
      json[r'startDate'] = _dateFormatter.format(this.startDate!.toUtc());
    } else {
      json[r'startDate'] = null;
    }
    if (this.dueDate != null) {
      json[r'dueDate'] = _dateFormatter.format(this.dueDate!.toUtc());
    } else {
      json[r'dueDate'] = null;
    }
    if (this.date != null) {
      json[r'date'] = _dateFormatter.format(this.date!.toUtc());
    } else {
      json[r'date'] = null;
    }
    if (this.estimatedTime != null) {
      json[r'estimatedTime'] = this.estimatedTime;
    } else {
      json[r'estimatedTime'] = null;
    }
    if (this.ignoreNonWorkingDays != null) {
      json[r'ignoreNonWorkingDays'] = this.ignoreNonWorkingDays;
    } else {
      json[r'ignoreNonWorkingDays'] = null;
    }
    if (this.spentTime != null) {
      json[r'spentTime'] = this.spentTime;
    } else {
      json[r'spentTime'] = null;
    }
    if (this.percentageDone != null) {
      json[r'percentageDone'] = this.percentageDone;
    } else {
      json[r'percentageDone'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'createdAt'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt!.toUtc().toIso8601String();
    } else {
      json[r'updatedAt'] = null;
    }
    if (this.links != null) {
      json[r'_links'] = this.links;
    } else {
      json[r'_links'] = null;
    }
    return json;
  }

  /// Returns a new [WorkPackagePatchModel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WorkPackagePatchModel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WorkPackagePatchModel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WorkPackagePatchModel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WorkPackagePatchModel(
        lockVersion: mapValueOfType<int>(json, r'lockVersion')!,
        subject: mapValueOfType<String>(json, r'subject'),
        description: WorkPackageModelDescription.fromJson(json[r'description']),
        scheduleManually: mapValueOfType<bool>(json, r'scheduleManually'),
        startDate: mapDateTime(json, r'startDate', r''),
        dueDate: mapDateTime(json, r'dueDate', r''),
        date: mapDateTime(json, r'date', r''),
        estimatedTime: mapValueOfType<String>(json, r'estimatedTime'),
        ignoreNonWorkingDays: mapValueOfType<bool>(json, r'ignoreNonWorkingDays'),
        spentTime: mapValueOfType<String>(json, r'spentTime'),
        percentageDone: mapValueOfType<int>(json, r'percentageDone'),
        createdAt: mapDateTime(json, r'createdAt', r''),
        updatedAt: mapDateTime(json, r'updatedAt', r''),
        links: WorkPackagePatchModelLinks.fromJson(json[r'_links']),
      );
    }
    return null;
  }

  static List<WorkPackagePatchModel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WorkPackagePatchModel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WorkPackagePatchModel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WorkPackagePatchModel> mapFromJson(dynamic json) {
    final map = <String, WorkPackagePatchModel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WorkPackagePatchModel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WorkPackagePatchModel-objects as value to a dart map
  static Map<String, List<WorkPackagePatchModel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WorkPackagePatchModel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WorkPackagePatchModel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'lockVersion',
  };
}

