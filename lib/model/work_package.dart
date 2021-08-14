//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class WorkPackage {
  /// Returns a new [WorkPackage] instance.
  WorkPackage({
    this.id,
    this.lockVersion,
    this.percentageDone,
    this.subject,
    this.description,
    this.startDate,
    this.dueDate,
    this.date,
    this.createdAt,
    this.updatedAt,
    this.estimatedTime,
    this.embedded,
    this.links,
  });

  int id;

  int lockVersion;

  int percentageDone;

  String subject;

  Description description;

  DateTime startDate;

  DateTime dueDate;

  DateTime date;

  DateTime createdAt;

  DateTime updatedAt;

  String estimatedTime;

  WorkPackageEmbedded embedded;

  WorkPackageLinks links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WorkPackage &&
     other.id == id &&
     other.lockVersion == lockVersion &&
     other.percentageDone == percentageDone &&
     other.subject == subject &&
     other.description == description &&
     other.startDate == startDate &&
     other.dueDate == dueDate &&
     other.date == date &&
     other.createdAt == createdAt &&
     other.updatedAt == updatedAt &&
     other.estimatedTime == estimatedTime &&
     other.embedded == embedded &&
     other.links == links;

  @override
  int get hashCode =>
    (id == null ? 0 : id.hashCode) +
    (lockVersion == null ? 0 : lockVersion.hashCode) +
    (percentageDone == null ? 0 : percentageDone.hashCode) +
    (subject == null ? 0 : subject.hashCode) +
    (description == null ? 0 : description.hashCode) +
    (startDate == null ? 0 : startDate.hashCode) +
    (dueDate == null ? 0 : dueDate.hashCode) +
    (date == null ? 0 : date.hashCode) +
    (createdAt == null ? 0 : createdAt.hashCode) +
    (updatedAt == null ? 0 : updatedAt.hashCode) +
    (estimatedTime == null ? 0 : estimatedTime.hashCode) +
    (embedded == null ? 0 : embedded.hashCode) +
    (links == null ? 0 : links.hashCode);

  @override
  String toString() => 'WorkPackage[id=$id, lockVersion=$lockVersion, percentageDone=$percentageDone, subject=$subject, description=$description, startDate=$startDate, dueDate=$dueDate, date=$date, createdAt=$createdAt, updatedAt=$updatedAt, estimatedTime=$estimatedTime, embedded=$embedded, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (id != null) {
      json[r'id'] = id;
    }
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
      json[r'startDate'] = _dateFormatter.format(startDate.toUtc());
    }
    if (dueDate != null) {
      json[r'dueDate'] = _dateFormatter.format(dueDate.toUtc());
    }
    if (date != null) {
      json[r'date'] = _dateFormatter.format(date.toUtc());
    }
    if (createdAt != null) {
      json[r'createdAt'] = createdAt.toUtc().toIso8601String();
    }
    if (updatedAt != null) {
      json[r'updatedAt'] = updatedAt.toUtc().toIso8601String();
    }
    if (estimatedTime != null) {
      json[r'estimatedTime'] = estimatedTime;
    }
    if (embedded != null) {
      json[r'_embedded'] = embedded;
    }
    if (links != null) {
      json[r'_links'] = links;
    }
    return json;
  }

  /// Returns a new [WorkPackage] instance and imports its values from
  /// [json] if it's non-null, null if [json] is null.
  static WorkPackage fromJson(Map<String, dynamic> json) => json == null
    ? null
    : WorkPackage(
        id: json[r'id'],
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
        date: json[r'date'] == null
          ? null
          : DateTime.parse(json[r'date']),
        createdAt: json[r'createdAt'] == null
          ? null
          : DateTime.parse(json[r'createdAt']),
        updatedAt: json[r'updatedAt'] == null
          ? null
          : DateTime.parse(json[r'updatedAt']),
        estimatedTime: json[r'estimatedTime'],
        embedded: WorkPackageEmbedded.fromJson(json[r'_embedded']),
        links: WorkPackageLinks.fromJson(json[r'_links']),
    );

  static List<WorkPackage> listFromJson(List<dynamic> json, {bool emptyIsNull, bool growable,}) =>
    json == null || json.isEmpty
      ? true == emptyIsNull ? null : <WorkPackage>[]
      : json.map((dynamic value) => WorkPackage.fromJson(value)).toList(growable: true == growable);

  static Map<String, WorkPackage> mapFromJson(Map<String, dynamic> json) {
    final map = <String, WorkPackage>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) => map[key] = WorkPackage.fromJson(value));
    }
    return map;
  }

  // maps a json object with a list of WorkPackage-objects as value to a dart map
  static Map<String, List<WorkPackage>> mapListFromJson(Map<String, dynamic> json, {bool emptyIsNull, bool growable,}) {
    final map = <String, List<WorkPackage>>{};
    if (json?.isNotEmpty == true) {
      json.forEach((key, value) {
        map[key] = WorkPackage.listFromJson(value, emptyIsNull: emptyIsNull, growable: growable,);
      });
    }
    return map;
  }
}

