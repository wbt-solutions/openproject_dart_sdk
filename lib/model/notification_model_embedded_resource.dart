//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.12

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openproject_dart_sdk.api;

class NotificationModelEmbeddedResource {
  /// Returns a new [NotificationModelEmbeddedResource] instance.
  NotificationModelEmbeddedResource({
    this.id,
    this.lockVersion,
    required this.subject,
    this.type,
    this.description,
    this.scheduleManually,
    this.readonly,
    this.startDate,
    this.dueDate,
    this.date,
    this.derivedStartDate,
    this.derivedDueDate,
    this.duration,
    this.estimatedTime,
    this.derivedEstimatedTime,
    this.ignoreNonWorkingDays,
    this.spentTime,
    this.percentageDone,
    this.derivedPercentageDone,
    this.createdAt,
    this.updatedAt,
    required this.links,
  });

  /// Work package id
  ///
  /// Minimum value: 1
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  /// The version of the item as used for optimistic locking
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? lockVersion;

  /// Work package subject
  String subject;

  NotificationModelEmbeddedResourceTypeEnum? type;

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

  /// If true, the work package is in a readonly status so with the exception of the status, no other property can be altered.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? readonly;

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

  /// Similar to start date but is not set by a client but rather deduced by the work packages' descendants. If manual scheduleManually is active, the two dates can deviate.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? derivedStartDate;

  /// Similar to due date but is not set by a client but rather deduced by the work packages' descendants. If manual scheduleManually is active, the two dates can deviate.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? derivedDueDate;

  /// **(NOT IMPLEMENTED)** The amount of time in hours the work package needs to be completed. Not available for milestone type of work packages.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? duration;

  /// Time a work package likely needs to be completed excluding its descendants
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? estimatedTime;

  /// Time a work package likely needs to be completed including its descendants
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? derivedEstimatedTime;

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
  /// Minimum value: 0
  /// Maximum value: 100
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? percentageDone;

  /// Amount of total completion for a work package derived from itself and its descendant work packages
  ///
  /// Minimum value: 0
  /// Maximum value: 100
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? derivedPercentageDone;

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

  WorkPackageModelLinks links;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NotificationModelEmbeddedResource &&
    other.id == id &&
    other.lockVersion == lockVersion &&
    other.subject == subject &&
    other.type == type &&
    other.description == description &&
    other.scheduleManually == scheduleManually &&
    other.readonly == readonly &&
    other.startDate == startDate &&
    other.dueDate == dueDate &&
    other.date == date &&
    other.derivedStartDate == derivedStartDate &&
    other.derivedDueDate == derivedDueDate &&
    other.duration == duration &&
    other.estimatedTime == estimatedTime &&
    other.derivedEstimatedTime == derivedEstimatedTime &&
    other.ignoreNonWorkingDays == ignoreNonWorkingDays &&
    other.spentTime == spentTime &&
    other.percentageDone == percentageDone &&
    other.derivedPercentageDone == derivedPercentageDone &&
    other.createdAt == createdAt &&
    other.updatedAt == updatedAt &&
    other.links == links;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (lockVersion == null ? 0 : lockVersion!.hashCode) +
    (subject.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (scheduleManually == null ? 0 : scheduleManually!.hashCode) +
    (readonly == null ? 0 : readonly!.hashCode) +
    (startDate == null ? 0 : startDate!.hashCode) +
    (dueDate == null ? 0 : dueDate!.hashCode) +
    (date == null ? 0 : date!.hashCode) +
    (derivedStartDate == null ? 0 : derivedStartDate!.hashCode) +
    (derivedDueDate == null ? 0 : derivedDueDate!.hashCode) +
    (duration == null ? 0 : duration!.hashCode) +
    (estimatedTime == null ? 0 : estimatedTime!.hashCode) +
    (derivedEstimatedTime == null ? 0 : derivedEstimatedTime!.hashCode) +
    (ignoreNonWorkingDays == null ? 0 : ignoreNonWorkingDays!.hashCode) +
    (spentTime == null ? 0 : spentTime!.hashCode) +
    (percentageDone == null ? 0 : percentageDone!.hashCode) +
    (derivedPercentageDone == null ? 0 : derivedPercentageDone!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode) +
    (links.hashCode);

  @override
  String toString() => 'NotificationModelEmbeddedResource[id=$id, lockVersion=$lockVersion, subject=$subject, type=$type, description=$description, scheduleManually=$scheduleManually, readonly=$readonly, startDate=$startDate, dueDate=$dueDate, date=$date, derivedStartDate=$derivedStartDate, derivedDueDate=$derivedDueDate, duration=$duration, estimatedTime=$estimatedTime, derivedEstimatedTime=$derivedEstimatedTime, ignoreNonWorkingDays=$ignoreNonWorkingDays, spentTime=$spentTime, percentageDone=$percentageDone, derivedPercentageDone=$derivedPercentageDone, createdAt=$createdAt, updatedAt=$updatedAt, links=$links]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.lockVersion != null) {
      json[r'lockVersion'] = this.lockVersion;
    } else {
      json[r'lockVersion'] = null;
    }
      json[r'subject'] = this.subject;
    if (this.type != null) {
      json[r'_type'] = this.type;
    } else {
      json[r'_type'] = null;
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
    if (this.readonly != null) {
      json[r'readonly'] = this.readonly;
    } else {
      json[r'readonly'] = null;
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
    if (this.derivedStartDate != null) {
      json[r'derivedStartDate'] = _dateFormatter.format(this.derivedStartDate!.toUtc());
    } else {
      json[r'derivedStartDate'] = null;
    }
    if (this.derivedDueDate != null) {
      json[r'derivedDueDate'] = _dateFormatter.format(this.derivedDueDate!.toUtc());
    } else {
      json[r'derivedDueDate'] = null;
    }
    if (this.duration != null) {
      json[r'duration'] = this.duration;
    } else {
      json[r'duration'] = null;
    }
    if (this.estimatedTime != null) {
      json[r'estimatedTime'] = this.estimatedTime;
    } else {
      json[r'estimatedTime'] = null;
    }
    if (this.derivedEstimatedTime != null) {
      json[r'derivedEstimatedTime'] = this.derivedEstimatedTime;
    } else {
      json[r'derivedEstimatedTime'] = null;
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
    if (this.derivedPercentageDone != null) {
      json[r'derivedPercentageDone'] = this.derivedPercentageDone;
    } else {
      json[r'derivedPercentageDone'] = null;
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
      json[r'_links'] = this.links;
    return json;
  }

  /// Returns a new [NotificationModelEmbeddedResource] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NotificationModelEmbeddedResource? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "NotificationModelEmbeddedResource[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "NotificationModelEmbeddedResource[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NotificationModelEmbeddedResource(
        id: mapValueOfType<int>(json, r'id'),
        lockVersion: mapValueOfType<int>(json, r'lockVersion'),
        subject: mapValueOfType<String>(json, r'subject')!,
        type: NotificationModelEmbeddedResourceTypeEnum.fromJson(json[r'_type']),
        description: WorkPackageModelDescription.fromJson(json[r'description']),
        scheduleManually: mapValueOfType<bool>(json, r'scheduleManually'),
        readonly: mapValueOfType<bool>(json, r'readonly'),
        startDate: mapDateTime(json, r'startDate', r''),
        dueDate: mapDateTime(json, r'dueDate', r''),
        date: mapDateTime(json, r'date', r''),
        derivedStartDate: mapDateTime(json, r'derivedStartDate', r''),
        derivedDueDate: mapDateTime(json, r'derivedDueDate', r''),
        duration: mapValueOfType<String>(json, r'duration'),
        estimatedTime: mapValueOfType<String>(json, r'estimatedTime'),
        derivedEstimatedTime: mapValueOfType<String>(json, r'derivedEstimatedTime'),
        ignoreNonWorkingDays: mapValueOfType<bool>(json, r'ignoreNonWorkingDays'),
        spentTime: mapValueOfType<String>(json, r'spentTime'),
        percentageDone: mapValueOfType<int>(json, r'percentageDone'),
        derivedPercentageDone: mapValueOfType<int>(json, r'derivedPercentageDone'),
        createdAt: mapDateTime(json, r'createdAt', r''),
        updatedAt: mapDateTime(json, r'updatedAt', r''),
        links: WorkPackageModelLinks.fromJson(json[r'_links'])!,
      );
    }
    return null;
  }

  static List<NotificationModelEmbeddedResource> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NotificationModelEmbeddedResource>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NotificationModelEmbeddedResource.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NotificationModelEmbeddedResource> mapFromJson(dynamic json) {
    final map = <String, NotificationModelEmbeddedResource>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NotificationModelEmbeddedResource.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NotificationModelEmbeddedResource-objects as value to a dart map
  static Map<String, List<NotificationModelEmbeddedResource>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NotificationModelEmbeddedResource>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NotificationModelEmbeddedResource.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'subject',
    '_links',
  };
}


class NotificationModelEmbeddedResourceTypeEnum {
  /// Instantiate a new enum with the provided [value].
  const NotificationModelEmbeddedResourceTypeEnum._(this.value);

  /// The underlying value of this enum member.
  final String value;

  @override
  String toString() => value;

  String toJson() => value;

  static const workPackage = NotificationModelEmbeddedResourceTypeEnum._(r'WorkPackage');

  /// List of all possible values in this [enum][NotificationModelEmbeddedResourceTypeEnum].
  static const values = <NotificationModelEmbeddedResourceTypeEnum>[
    workPackage,
  ];

  static NotificationModelEmbeddedResourceTypeEnum? fromJson(dynamic value) => NotificationModelEmbeddedResourceTypeEnumTypeTransformer().decode(value);

  static List<NotificationModelEmbeddedResourceTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NotificationModelEmbeddedResourceTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NotificationModelEmbeddedResourceTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [NotificationModelEmbeddedResourceTypeEnum] to String,
/// and [decode] dynamic data back to [NotificationModelEmbeddedResourceTypeEnum].
class NotificationModelEmbeddedResourceTypeEnumTypeTransformer {
  factory NotificationModelEmbeddedResourceTypeEnumTypeTransformer() => _instance ??= const NotificationModelEmbeddedResourceTypeEnumTypeTransformer._();

  const NotificationModelEmbeddedResourceTypeEnumTypeTransformer._();

  String encode(NotificationModelEmbeddedResourceTypeEnum data) => data.value;

  /// Decodes a [dynamic value][data] to a NotificationModelEmbeddedResourceTypeEnum.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  NotificationModelEmbeddedResourceTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data != null) {
      switch (data) {
        case r'WorkPackage': return NotificationModelEmbeddedResourceTypeEnum.workPackage;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// Singleton [NotificationModelEmbeddedResourceTypeEnumTypeTransformer] instance.
  static NotificationModelEmbeddedResourceTypeEnumTypeTransformer? _instance;
}


