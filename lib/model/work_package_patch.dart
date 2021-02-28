//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
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

  int lockVersion;

  int percentageDone;

  String subject;

  Description description;

  DateTime startDate;

  DateTime dueDate;

  String estimatedTime;

  WorkPackageLinks links;

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
    (lockVersion == null ? 0 : lockVersion.hashCode) +
    (percentageDone == null ? 0 : percentageDone.hashCode) +
    (subject == null ? 0 : subject.hashCode) +
    (description == null ? 0 : description.hashCode) +
    (startDate == null ? 0 : startDate.hashCode) +
    (dueDate == null ? 0 : dueDate.hashCode) +
    (estimatedTime == null ? 0 : estimatedTime.hashCode) +
    (links == null ? 0 : links.hashCode);

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
      json[r'startDate'] = startDate.toUtc().toIso8601String();
    }
    if (dueDate != null) {
      json[r'dueDate'] = dueDate.toUtc().toIso8601String();
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
  /// [json] if it's non-null, null if [json] is null.
  static WorkPackagePatch fromJson(Map<String, dynamic> json) => json == null
    ? null
    : WorkPackagePatch(
        lockVersion: json[r'lockVersion'],
        percentageDone: json[r'percentageDone'],
        subject: json[r'subject'],
        description: Description.fromJson(json[r'description']),
        startDate: json[r'startDate'] == null
          ? null
          : DateTime.parse(json[r'startDate']),
        dueDate: json[r'dueDate'] == null
          ? null
          : DateTime.parse(json[r'dueDate']),
        estimatedTime: json[r'estimatedTime'],
        links: WorkPackageLinks.fromJson(json[r'_links']),
    );

  static List<WorkPackagePatch> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WorkPackagePatch>[]
      : json.map((v) => WorkPackagePatch.fromJson(v)).toList(growable: true == growable);

  static Map<String, WorkPackagePatch> mapFromJson(Map<String, dynamic> json) {
    final map = <String, WorkPackagePatch>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) => map[key] = WorkPackagePatch.fromJson(v));
    }
    return map;
  }

  // maps a json object with a list of WorkPackagePatch-objects as value to a dart map
  static Map<String, List<WorkPackagePatch>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<WorkPackagePatch>>{};
    if (json != null && json.isNotEmpty) {
      json.forEach((String key, dynamic v) {
        map[key] = WorkPackagePatch.listFromJson(v, emptyIsNull: emptyIsNull, growable: growable);
      });
    }
    return map;
  }
}

